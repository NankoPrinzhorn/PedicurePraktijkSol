<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();

if(!empty($_GET)) {
    $koppel_tabel = $_GET['koppel_tabel'];
    $count = $_GET['count'] +1;

    $db->createKoppelCMSHTML($koppel_tabel, $count);
}
?>