<?php 
session_start();
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();
//log user out
if (!empty($_GET) && $_GET['value'] == 'logout') {
    session_destroy();
    echo json_encode(true); 
}
?>