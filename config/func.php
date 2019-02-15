<?php
//include("dbcon.php");
include("conf.inc.php");
include("data.inc.php");

EzConnect();

function EzConnect(){
	global $bapasDB;

	$server = "localhost";
	$username = "root";
	$password = "";
	$db_name = "bapasjaksel_sppd";
	$bapasDB->ConnectDB($server, $username, $password, $db_name);
}

function faroeeCrypt($str) {
    $hashed = "";
    
    $hashed = password_hash($str, PASSWORD_BCRYPT);
    return $hashed;
}

?>