<?php
include("dbcon.php");
include("conf.inc.php");

spl_autoload_register(function ($class) {
    include '/'.$class.'.php';
});

function alert_login_failed() {
    echo "<h3>Maaf anda salah memasukan data, silahkan coba kembali</h3>";
}

function faroeeCrypt($str) {
    $hashed = "";
    
    $hashed = password_hash($str, PASSWORD_BCRYPT);
    return $hashed;
}

?>