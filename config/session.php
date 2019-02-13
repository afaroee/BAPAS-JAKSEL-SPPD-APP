<?php
   include_once("func.php");
   error_reporting(0);
   session_start();
   if ((!$_SESSION['email']) AND (!$_SESSION['password'])) {
       header("location:./index.php");
   } else { 
       header("location:./dashboard.php");
   }
?>