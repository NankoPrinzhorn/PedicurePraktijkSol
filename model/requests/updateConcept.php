<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();

// var_dump($_GET);
if(!empty($_GET)) {
    $id = $_GET['id'];
    $value = $_GET['value'];

    $sql = "UPDATE concept SET content = ? WHERE id = ?";
    $params = array($value, $id);
    $db->performQuery($sql, $params);
}
?>