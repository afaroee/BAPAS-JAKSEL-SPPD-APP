<?php
session_start();
include_once 'frontend/view_header.php';
if (isset($_SESSION['username'])) {
include 'frontend/view_body.php';
include 'frontend/view_sidebar.php';
include 'frontend/view_topbar.php';
include 'frontend/view_content.php';
include 'frontend/view_logoutModal.php';
include 'frontend/view_footer.php'; 
} else {
	header("location:warning.php");
}
?>    