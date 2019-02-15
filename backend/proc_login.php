<?php
include "../config/func.php";
include "../config/userData.php";

session_start();
$userLogin = new userData();

$username = $_POST['username'];
$password = $_POST['password'];

$lastLogin = "";

$q = "SELECT * FROM tb_user WHERE username = '$username'";

$res = $bapasDB->prepare($q);
    $res->execute();
    if (($res->rowCount())==1) {
        
        $data = $res->fetch(PDO::FETCH_ASSOC);
        
        if (password_verify($password, $data['password'])) {

            // put user logged in information to userLogin class
            $userLogin->set_username($data['username']);
            $userLogin->set_email($data['email']);
            $userLogin->set_fullName($data['fullname']);
            $userLogin->set_foto($data['foto']);
            $userLogin->set_usernameTarget($data['username_target']);
            $userLogin->set_lastLogin($data['last_login']);
            
            // update last login data
            $lastLogin = date("Y/m/d h:i:sa");
            $lastLogin = str_replace($lastLogin, "/", "-");
            $q_LastLogin = "UPDATE tb_user SET last_login = '".$lastLogin."' WHERE username = '".$username."'";
            $sql_update = $bapasDB->prepare($q_LastLogin);
            $sql_update->execute();

            // store user login into session
            $_SESSION['username'] = $data['username'];
            $_SESSION['email'] = $data['email'];
            $_SESSION['fullname'] = $data['fullname'];
            $_SESSION['username_target'] = $data['username_target'];
            $_SESSION['foto'] = $data['foto'];
            $_SESSION['email'] = $date['email'];

            header("location:../dashboard.php");
        } else {
            echo "
            <script>
            eval(\"location='../index.php '\");
             alert('Something error while logged in, please re-check your username or password!')
            </script>";
        }
    
    } else {
       // header("location:../login.php");
    }
?>