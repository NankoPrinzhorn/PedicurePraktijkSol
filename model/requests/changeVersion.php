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


        //select all from live versie
        $liveInfo = $db->fetchAll("SELECT * FROM `$table` WHERE weergeven = 1");
        $liveColumns = $db->fetchAll("SHOW COLUMNS FROM `$table`");
        $ignore = array('id', 'weergeven', 'version');
        //pak order

        //update concept met waardes

        //| make sql string |\\
        $sqlColumnString = "";
        $deleted = "";
        foreach ($liveColumns as $value) {
            if (!in_array($value['Field'], $ignore)) {
                $sqlColumnString .= "`".$value['Field']."`,";
            }   
        }
        if ($table != "live") {
            $sqlColumnString .= "`weergeven`,";
            $sqlColumnString .= "`deleted`,";
        }
        $sqlColumnString = rtrim($sqlColumnString, ",");

        $updateTable = str_replace("live", "concept", $table);

        //emty concept table
        $db->performQuery("TRUNCATE `$updateTable`");
        foreach ($liveInfo as $item) {
			$sqlValueString = "";
			$params = array();
			foreach ($liveColumns as $value) {
				if (!in_array($value['Field'], $ignore)) {
                    $sqlValueString .= "?,";
                    var_dump($value['Field']);
					array_push($params, $item[$value['Field']]);
                }
					
            }

            if ($table != "live") {
                $sqlValueString .= "?,";
                array_push($params, 1);
                $sqlValueString .= "?,";
                array_push($params, 0);
            }
            $sqlValueString = rtrim($sqlValueString, ",");

            //insert new data in concept
            $db->performQuery("INSERT INTO `$updateTable` ($sqlColumnString) VALUES ($sqlValueString)", $params);
		}
    }

    echo json_encode(true);
}
?>