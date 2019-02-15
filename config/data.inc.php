<?php
//include_once("./config/dbcon.php");

class ezDB extends PDO {
   private $q           = "";
   private $qError      = "";
   private $qLog        = "";
   private $qShowError  = true;

    public function __construct(){}

    public function ConnectDB($Host,$User,$Passwd,$DB_Name,$DB_Eng="mysql",$DB_Port="3306"){
        try {
            $eDNS = $DB_Eng.":dbname=".$DB_Name.";host=".$Host.";port=".$DB_Port;
            parent::__construct($eDNS, $User, $Passwd);
            parent::setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            parent::setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        } catch (PDOException $e) {
            session_destroy();
            die("Connection to server is not established ".$e->getMessage());
        }
    }

    public function GetData($t_Name, $t_Field="*", $t_Where="", $v_Join=array(), $t_Group="", $t_Order="", $t_Limit=""){

        if(trim($t_Where) <> "") $t_Where = "WHERE " . $t_Where;
        if(trim($t_Order) <> "") $t_Order = "ORDER BY " . $t_Order;
        if(trim($t_Limit) <> "") $t_Limit = "LIMIT " . $t_Limit;
        if(trim($t_Group) <> "") $t_Group = "GROUP BY " . $t_Group;

        $c_Join = "";
        if(!empty($v_Join) ) {
            if(is_array($v_Join)){
                $c_Join = implode(" ", $v_Join);
            } else {
                $c_Join = $v_Join;
            }
        }

        $q = "SELECT $t_Field FROM $t_Name $c_Join $t_Where $t_Group $t_Order $t_Limit";
        return $this->Sql($q);

    }
   
    public function Insert($cTable,$vaData=array(),$lUpdateLog=true){
        $cField = "" ;   
        $cValue = "" ; 
        if(!empty($vaData)){
            foreach($vaData as $cKey => $cValues){
                $cValues = addslashes($cValues) ; 
                $cField .= $cKey . "," ;        
                $cValue .= "'$cValues'," ; 
            }
            $cField = substr($cField,0, strlen($cField) - 1) ;
            $cField = "($cField)" ; 
            
            $cValue = substr($cValue,0, strlen($cValue) - 1) ;  
            $cValue = "(". $this->UTF8Please($cValue) .")" ; 
        } 
        
        $cSql   = "INSERT INTO $cTable $cField VALUES $cValue" ; 
        $this->Sql($cSql) ; 

        //log 
        if($lUpdateLog) $this->SaveLog($cTable,"insert",$cSql) ;
        //end log 

        return empty($this->cError) ;  
    }   

    public function Delete($cTable,$cWhere="",$lUpdateLog=true){
        if(trim($cWhere) <> "") $cWhere = "WHERE " . $cWhere ; 
        $cSql   = "DELETE FROM $cTable $cWhere" ;
        $this->Sql($cSql) ; 
        
        //log 
        if($lUpdateLog) $this->SaveLog($cTable,"delete",$cSql) ;
        //end log 

        return empty($this->cError) ;  
    }

    public function DeleteAll($cTable){
        $this->Sql("TRUNCATE TABLE " . $cTable) ;
    } 

    public function Edit($cTable,$vaData=array(),$cWhere="",$lUpdateLog=true){
        if(trim($cWhere) <> "") $cWhere = "WHERE " . $cWhere ; 
        $cData  = " set " ;  
        if(!empty($vaData)){
            foreach($vaData as $cKey => $cValue){
                $cValue  = addslashes($cValue) ;  
                $cData  .= $cKey . " = '". $this->UTF8Please($cValue) ."' , " ;     
            } 
            $cData       = substr($cData,0, strlen($cData) - 2) ; 
        }
        $cSql   = "UPDATE $cTable $cData $cWhere" ;
        $this->Sql($cSql) ; 

        //log 
        if($lUpdateLog) $this->SaveLog($cTable,"edit",$cSql) ;
        //end log

        return empty($this->cError) ;
    }
    
    public function Update($cTable,$vaData=array(),$cWhere="",$lUpdateLog=true,$vaInsert=array(),$vaEdit=array() ){
        $dbData = $this->Browse($cTable,"*",$cWhere) ; 
        if($this->Rows($dbData) > 0){
            if(!empty($vaEdit)) $vaData = array_merge($vaData,$vaEdit) ; 
            $this->Edit($cTable,$vaData,$cWhere,$lUpdateLog) ;  
        }else{ 
            if(!empty($vaInsert)) $vaData   = array_merge($vaData,$vaInsert) ; 
            $this->Insert($cTable,$vaData,$lUpdateLog) ; 
        }
    }

    public function GetRow($dbData){
        if($dbData !== null){
            if($this->qError == ""){
                try { 
                    $dbRow = $dbData->fetch(PDO::FETCH_ASSOC) ; 
 
                    if(!empty($dbRow) and is_array($dbRow)){
                        foreach($dbRow as $cKey => $cValue){
                            $dbRow[$cKey]   = stripslashes(trim($this->UTF8Please($cValue) )) ;     
                        }  
                    } 
                    return $dbRow ;   
                } catch (PDOException $e) {
                    $this->qError   = $e->getMessage() ;    
                    if($this->qShowError) echo $this->qError . " your query : $cQuery";     
                }
            }else{ 
                echo($this->qError) ;   
            } 
        }
    } 

    public function InsertID(){ 
        return parent::lastInsertId() ; 
    }

    public function Rows($dbData){
        if($dbData !== null){
            return $dbData->rowCount() ; 
        } 
    }

    public function GetId($cTable){
        $dbData = $this->Browse($cTable,"max(kode) kode") ;
        $nRow   = 0 ; 
        if($dbRow   = $this->GetRow($dbData)){
            $nRow   = (int) $dbRow['kode'] ;        
        }
        $nRow++ ; 
        return $nRow ; 
    }  
     
    public function AddTable($cTable,$cSql,$cDb=""){
        $lFound         = false ; 
        $cWhereTable    = ($cDb !== "") ? " from " . $cDb : ""  ; 
        $dbData = $this->Sql("show tables " . $cWhereTable) ; 
        while($dbRow = $dbData->fetch(PDO::FETCH_BOTH)){
            if(strtolower($dbRow[0]) == strtolower($cTable)){
                $lFound = true ;        
            }
        }
 
        if(!$lFound){
            $this->Sql($cSql) ; 
        }
    }

    public function AddField($cTable,$cField,$cTipe,$cDefault='',$cAfter=''){
        $lAda   = false ; 
        $dbData = $this->Sql("show fields from $cTable where Field = '$cField'") ;
        if($this->Rows($dbData) > 0){
            $lAda   = true ;    
        }

        if($cDefault !== '') $cDefault  = "DEFAULT " . $cDefault ; 
         
        if(!$lAda){
            $cOAfter    = "" ; 
            if(trim($cAfter) <> ''){
                $cOAfter= " AFTER $cAfter" ; 
            } 
             
            $this->Sql("ALTER TABLE $cTable ADD $cField $cTipe NOT NULL $cDefault $cOAfter") ; 
        } 
    }  
    public function Sql($query) {
        if($query !== "") {
            $this->q = $query;

            try {
                $dbData = parent::prepare($query);
                $dbData->execute();
                return $dbData;
            } catch (PDOException $e) {
                $this->qError = $e->getMessage();
                if($this->qShowError) print_r($this->qError).print_r("query inputed : $query");
            } catch (Exception $e) {
                $this->qError = $e->getMessage();
                if($this->qShowError) print_r($this->qError).print_r("query inputed : $query");
            }
        }
    }

    public function getSQL() { return $this->q; }

    public function UTF8Please($text,$lEncode=false){
        if($lEncode) $text  = utf8_encode($text) ; 
        return iconv(mb_detect_encoding($text, mb_detect_order(), true), "UTF-8", $text);
        //return $text ; 
    }

}

$bapasDB = new ezDB();
?>