<?php 
class SiteDatabase extends Database {
    // public function Name($props) {
    //     $sql = "string";
    //     $params = array($props);

    //     try {
    //         $stmt = $this->db->prepare($sql);
    //         $stmt->execute($params);
            
    //         return $stmt->fetchAll();
    //     } catch (PDOException $e) {
    //         echo $e;
    //     }
    // }

    public function getPageData($page, $admin) {
        if(!$admin) {
            //actual pagina
            $sql = "SELECT
                    `page`,
                    `content` as text,
                    CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_')) as editID
                    FROM concept WHERE page = ? ORDER BY pageOrder ASC";
            $params = array($page);
        } else {
            //concept
            $sql = "SELECT
                    `page`,
                    `content` as text,
                    CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_')) as editID
                    FROM concept WHERE page = ? ORDER BY pageOrder ASC";
            $params = array($page);
        }

        try {
            $stmt = $this->db->prepare($sql);
            $stmt->execute($params);
            
            return $stmt->fetchAll();
        } catch (PDOException $e) {
            echo $e;
        }
    }

    public function getPageInfo($page) {
        $sql = "SELECT
            `id`,
            `inputType`,
            `page`,
            `content` as text,
            CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_')) as editID,
            `htmlID`
            FROM concept WHERE page = ? ORDER BY pageOrder ASC";
        $params = array($page);

        try {
            $stmt = $this->db->prepare($sql);
            $stmt->execute($params);
            
            return $stmt->fetchAll();
        } catch (PDOException $e) {
            echo $e;
        }
    }

    public function generateCMSHTML($data) {
        // var_dump($data);
        foreach ($data as $item) {
            $item['koppel_tabel'] = 0;
            $item['Field'] = 0;
            //text -> textfield
            //varchar -> text input
            //boolean -> ja nee vraag
            if ($item["inputType"] == "text" || 
                $item["inputType"] == "varchar(255)") {
                $this->showCMSHTML($item);
            } elseif (strpos($item["inputType"], 'koppel_') !== false) {    
                $koppel_tabel = substr($item["inputType"], 7);
                $koppel_columns = $this->fetchAll("SHOW COLUMNS FROM `$koppel_tabel`");
                $koppel_info = $this->fetchAll("SELECT * FROM `$koppel_tabel` WHERE deleted = 0 ORDER BY pageOrder ASC");
                $count = 0;
                foreach ($koppel_info as $item) {
                    $current_item = [];
                    echo "<div class='innerCMSBlok'>";
                    $count++;
                    echo "<h1>".substr(str_replace("concept_", "", $koppel_tabel), 0, -2) ." ".$count."</h1>";
                    foreach($koppel_columns as $column) {
                        if ($column["Type"] == "text" || 
                            $column["Type"] == "varchar(255)" ||
                            $column["Type"] == "int(1)") {

                            $array = [
                                'id' => $item['id'],
                                'inputType' => $column["Type"],
                                'Field' => $column["Field"],
                                'editID' => $item['id']."-".$koppel_tabel."-".$column['Field'],
                                'htmlID' => str_replace("concept_", "", $koppel_tabel),
                                'text' => $item[$column['Field']],
                                'koppel_tabel' => $koppel_tabel
                            ];
                            array_push($current_item, $array);
                        }
                    }

                    foreach($current_item as $item) {
                        $this->showCMSHTML($item);
                    }
                    echo "</div>";
                }
            }
        }
    }

    public function showCMSHTML($item) {
        switch ($item["inputType"]) {
            case "text":
                echo "<label for=".$item["editID"].">".$item["htmlID"]."</label><textarea id='".$item["editID"]."' style='width: 100%;'>".$item["text"]."</textarea>";
                echo "
                    <script>
                        $('#".$item["editID"]."').on('keyup', function() {
                            $('.".$item["editID"]."').text($(this).val());
                            if(ajaxListRequest) {
                                ajaxListRequest.abort();
                                ajaxListRequest = null;
                            }

                            ajaxListRequest = $.ajax({
                                url:'/model/requests/updateConcept.php',
                                data: {
                                    id:".$item["id"].",
                                    koppel_tabel:'".$item['koppel_tabel']."',
                                    koppel_type:'".$item['Field']."',
                                    value:$(this).val()
                                }
                            });
                        });
                    </script>
                ";
                break;

            case "varchar(255)":
                echo "<label for=".$item["editID"].">".$item["htmlID"]."</label><input id='".$item["editID"]."' style='width: 100%;' type='text' value='".$item["text"]."'>";
                echo "
                    <script>
                        $('#".$item["editID"]."').on('keyup', function() {
                            $('.".$item["editID"]."').text($(this).val());
                            if(ajaxListRequest) {
                                ajaxListRequest.abort();
                                ajaxListRequest = null;
                            }

                            ajaxListRequest = $.ajax({
                                url:'/model/requests/updateConcept.php',
                                data: {
                                    id:".$item["id"].",
                                    koppel_tabel:'".$item['koppel_tabel']."',
                                    koppel_type:'".$item['Field']."',
                                    value:$(this).val()
                                }
                            });
                        });
                    </script>
                ";
                break;

            case "int(1)":
                if ($item['Field'] == "weergeven") {
                    $ja = ($item['text'] == 1) ? "checked" : "";
                    $nee = ($item['text'] == 0) ? "checked" : "";

                    echo "weergeven:";
                    echo "<input id='".$item["editID"]."' type='radio' name='weergeven-".$item["editID"]."' value='1' $ja>Ja";
                    echo "<input id='".$item["editID"]."' type='radio' name='weergeven-".$item["editID"]."' value='0' $nee>Nee";
                
                    echo "
                        <script>
                            $('input[type=radio][name=weergeven-".$item["editID"]."]').on('change', function() {
                                if(ajaxListRequest) {
                                    ajaxListRequest.abort();
                                    ajaxListRequest = null;
                                }

                                ajaxListRequest = $.ajax({
                                    url:'/model/requests/updateConcept.php',
                                    data: {
                                        id:".$item["id"].",
                                        koppel_tabel:'".$item['koppel_tabel']."',
                                        koppel_type:'".$item['Field']."',
                                        value:$(this).val()
                                    }
                                });
                            });
                        </script>
                    ";
                }
                break;
            
            default:
                break;
        }
    }
}
?>