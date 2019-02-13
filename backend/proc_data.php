<?php
include_once("./config/dbcon.php");
include_once("./config/func.php");

class myDB {
    $q = "";
    $limit = "";
    $purpose = "";

    private function getData($tb, $sd, $wh, $whf, $whv, $l){
        $this->$tb_name = $tb;
        $this->$selected_data = $sd;
        $this->where_cond = $wh;
        $this->where_field = $whf;
        $this->where_value = $whv;
        $this->limit_result = $l;

        if ($wh == true) {
            if ($sd == "*") {
                $q = "SELECT ".$sd." FROM ".$tb." WHERE ".$whf." = ".$whv;
            } else {
                
            }
        } else {

        }
    }
    private function addData($tb, $val){}
    private function updateData($tb, $sd, $wh, $val){}
    private function deleteData($tb, $sd, $wh, $whf){}
    private function createData($tb, $f){}    

}
?>