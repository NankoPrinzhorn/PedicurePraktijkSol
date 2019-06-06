<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();
if ($_GET) {
    $tabellen = array( 
                    'concept',
                    'concept_behandelingen',
                    'concept_prijzen',
                    'concept_technieken',
                    'concept_tips'
                );
    $newestVersion = $db->fetchAssoc("SELECT `version` FROM `live` ORDER BY `version` DESC");
    $newestVersion = 1 + $newestVersion['version'];

    //| update current livesite |\\

    foreach ($tabellen as $table) {
    //| set concept tabel naar live |\\
        $ignore = array('id', 'weergeven', 'deleted', 'updated_at');

        $tableStucture = $db->fetchAll("SHOW COLUMNS FROM `$table`");
        if ($table == "concept") {
            $conceptInfo = $db->fetchAll("SELECT * FROM `$table`");
        } else {
            $conceptInfo = $db->fetchAll("SELECT * FROM `$table` WHERE deleted = 0 AND weergeven = 1");
        }
    
        //| make sql string |\\
        $sqlColumnString = "";
        $deleted = "";
        foreach ($tableStucture as $value) {
            if (!in_array($value['Field'], $ignore)) {
                $sqlColumnString .= "`".$value['Field']."`,";
            }

            
        }
        $sqlColumnString .= "`weergeven`,";
        $sqlColumnString .= "`version`,";
        $sqlColumnString = rtrim($sqlColumnString, ",");

        
        //| insert value |\\
        $table = str_replace("concept", "live", $table);

        //| update live sites |\\
        $db->performQuery("UPDATE `$table` SET weergeven = 0");

        foreach ($conceptInfo as $item) {
			$sqlValueString = "";
			$params = array();
			foreach ($tableStucture as $value) {
				if (!in_array($value['Field'], $ignore)) {
					$sqlValueString .= "?,";
					array_push($params, $item[$value['Field']]);
                }
					
            }
            $sqlValueString .= "?,";
            array_push($params, 1);
            $sqlValueString .= "?,";
            array_push($params, $newestVersion);

            $sqlValueString = rtrim($sqlValueString, ",");
			$db->performQuery("INSERT INTO `$table` ($sqlColumnString) VALUES ($sqlValueString)", $params);
		}
    //| end concept table naar live |\\
        echo json_encode(true);
    }   
}
?>