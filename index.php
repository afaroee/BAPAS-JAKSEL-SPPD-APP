<?php
session_start();
if (isset($_SESSION['username'])) {
	header("location:dashboard.php");
} else {
include_once("frontend/view_login.php");
}
?>