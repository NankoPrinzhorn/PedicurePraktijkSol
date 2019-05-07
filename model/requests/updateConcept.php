<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();

if(!empty($_GET)) {
    if (!empty($_GET['koppel_tabel'])) {
        $sql = "UPDATE `".$_GET['koppel_tabel']."` SET `".$_GET['koppel_type']."` = ? WHERE id = ?";
        $params = array($_GET['value'], $_GET['id']);

        $db->performQuery($sql, $params);
    } else {
        $id = $_GET['id'];
        $value = $_GET['value'];

        $sql = "UPDATE concept SET content = ? WHERE id = ?";
        $params = array($value, $id);
        $db->performQuery($sql, $params);
    }
}
?>