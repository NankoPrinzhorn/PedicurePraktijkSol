<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();
if ($_GET) {
    $version = $_GET['versie'];
    $tabellen = array( 
        'live',
        'live_behandelingen',
        'live_prijzen',
        'live_technieken',
        'live_tips'
    );

    foreach ($tabellen as $table) {
        //set all naar weergeven 0
        $db->performQuery("UPDATE `$table` SET weergeven = 0");

        //set versie naar weergeven 1
        $db->performQuery("UPDATE `$table` SET weergeven = 1 WHERE `version` = ".$version);
    }

    echo json_encode(true);
}
?>