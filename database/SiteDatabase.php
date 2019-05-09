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
        foreach ($data as $item) {
            $item['koppel_tabel'] = 0;
            $item['Field'] = 0;
            //text -> textfield
            //varchar -> text input
            //boolean -> ja nee vraag
            if ($item["inputType"] == "text" || 
                $item["inputType"] == "varchar(255)" ||
                $item["inputType"] == "longtext") {
                $this->showCMSHTML($item);
            } elseif (strpos($item["inputType"], 'koppel_') !== false) {    
                $this->showKoppelCMSHTML($item);
            }
        }
    }

    public function fetchHomeBehandelingen($admin) {
        $koppel_tabel = "concept_behandelingen";

        $koppel_columns = $this->fetchAll("SHOW COLUMNS FROM `$koppel_tabel`");
        $koppel_info = $this->fetchAll("SELECT * FROM `$koppel_tabel` WHERE deleted = 0 AND weergeven = 1 ORDER BY pageOrder ASC");
        
        $items = [];

        foreach ($koppel_info as $item) {
            $current_item = [];

            foreach($koppel_columns as $column) {
                if ($column["Type"] == "text" || 
                    $column["Type"] == "varchar(255)" ||
                    $column["Type"] == "int(1)" ||
                    $column["Type"] == "longtext") {

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

            array_push($items, $current_item);
        }

        return $items;
    }

    public function createKoppelCMSHTML($koppel_tabel, $count) {
        $order = $this->fetchAssoc("SELECT MAX(pageOrder) as nummer FROM `$koppel_tabel` WHERE deleted = 0");
        $order = $order['nummer']+1;

        $id = $this->insertAndfetchId("INSERT INTO `$koppel_tabel` (weergeven, deleted, pageOrder) VALUES (0, 0, $order)");
        $item = $this->fetchAssoc("SELECT * FROM `$koppel_tabel` WHERE id = $id");
        $koppel_columns = $this->fetchAll("SHOW COLUMNS FROM `$koppel_tabel`");

        $current_item = [];
        echo "<div class='innerCMSBlok ".$koppel_tabel."-".$item['id']."'>";
        echo "<h1>".substr(str_replace("concept_", "", $koppel_tabel), 0, -2) ." ".$count."</h1>";
        echo "<i class='fas fa-times ".$koppel_tabel."-".$item['id']."-delete'></i>";
        echo "
            <script>
                $('.".$koppel_tabel."-".$item['id']."-delete').on('click', function() {
                    if(confirm('weet je zeker dat je deze wilt verwijderen?')) {
                        var classes = $(this).attr('class').split(' ');
                        classes = classes[2].split('-');
                        var itemToDelete = $('.'+classes[0]+'-'+classes[1]).remove();

                        if(ajaxListRequest) {
                            ajaxListRequest.abort();
                            ajaxListRequest = null;
                        }

                        ajaxListRequest = $.ajax({
                            url:'/model/requests/updateConcept.php',
                            data: {
                                id:".$item["id"].",
                                koppel_tabel:'".$koppel_tabel."',
                                koppel_type:'deleted',
                                value:1
                            }
                        });
                    }
                });
            </script>
        ";
        foreach($koppel_columns as $column) {
            if ($column["Type"] == "text" || 
                $column["Type"] == "varchar(255)" ||
                $column["Type"] == "int(1)" ||
                $column["Type"] == "longtext") {

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

    public function showKoppelCMSHTML($item) {
        $koppel_tabel = substr($item["inputType"], 7);
        $koppel_columns = $this->fetchAll("SHOW COLUMNS FROM `$koppel_tabel`");
        $koppel_info = $this->fetchAll("SELECT * FROM `$koppel_tabel` WHERE deleted = 0 ORDER BY pageOrder ASC");
        $count = 0;
        echo "<div class='".$koppel_tabel."'>";
        foreach ($koppel_info as $item) {
            $current_item = [];
            echo "<div class='innerCMSBlok ".$koppel_tabel."-".$item['id']."'>";
            $count++;
            echo "<h1>".substr(str_replace("concept_", "", $koppel_tabel), 0, -2) ." ".$count."</h1>";
            echo "<i class='fas fa-times ".$koppel_tabel."-".$item['id']."-delete'></i>";
            echo "
                <script>
                    $('.".$koppel_tabel."-".$item['id']."-delete').on('click', function() {
                        if(confirm('weet je zeker dat je deze wilt verwijderen?')) {
                            var classes = $(this).attr('class').split(' ');
                            classes = classes[2].split('-');
                            var itemToDelete = $('.'+classes[0]+'-'+classes[1]).remove();

                            if(ajaxListRequest) {
                                ajaxListRequest.abort();
                                ajaxListRequest = null;
                            }

                            ajaxListRequest = $.ajax({
                                url:'/model/requests/updateConcept.php',
                                data: {
                                    id:".$item["id"].",
                                    koppel_tabel:'".$koppel_tabel."',
                                    koppel_type:'deleted',
                                    value:1
                                }
                            });
                        }
                    });
                </script>
            ";
            foreach($koppel_columns as $column) {
                if ($column["Type"] == "text" || 
                    $column["Type"] == "varchar(255)" ||
                    $column["Type"] == "int(1)" ||
                    $column["Type"] == "longtext") {

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
        echo '</div>';
        echo "<input type='button' value='Een nieuwe toevoegen' class='create-".$koppel_tabel."'>";
        echo "
            <script>
                $('.create-".$koppel_tabel."').on('click', function() {
                    var current_table = $(this).attr('class').split('-')[1];
                    var count = $('.".$koppel_tabel." .innerCMSBlok').length;

                    if(ajaxListRequest) {
                        ajaxListRequest.abort();
                        ajaxListRequest = null;
                    }

                    ajaxListRequest = $.ajax({
                        url:'/model/requests/generateKoppelHTML.php',
                        data: {
                            koppel_tabel:current_table,
                            count:count
                        },
                        success: function(data) {
                            console.log(data);
                            $('.".$koppel_tabel."').append(data);
                        }
                    });
                });

                
            </script>
        ";
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
            
            case "longtext":
                echo "<label for=".$item["editID"].">".$item["htmlID"]."</label>";
                echo "<img class='image-".$item['editID']."' style='width: 100%; margin-bottom: 20px;' src='/images/uploads/".$item['text']."'>";
                echo "<input type='file' name='image' id='image-".$item['editID']."' style='display:none;'>";
                echo "<br>";

                echo "
                    <script>
                        $('.image-".$item['editID']."').on('click', function () {
                            $('#image-".$item['editID']."').click();
                        });

                        $('#image-".$item['editID'].":file').on('change', function() {
                            if($(this).prop('files').length > 0)
                            {
                                var fd = new FormData();
                                var files = $('#image-".$item['editID']."')[0].files[0];
                                files['koppel_tabel'] = '".$item['koppel_tabel']."';
                                files['id'] = ".$item['id'].";
                                fd.append('id', ".$item['id'].");
                                fd.append('koppel_tabel', '".$item['koppel_tabel']."');
                                fd.append('image',files);

                                $.ajax({
                                    url:'/model/requests/updateConcept.php',
                                    type: 'post',
                                    data: fd,
                                    contentType: false,
                                    processData: false,
                                    success: function(response) {
                                        if (response != 0) {
                                            $('.image-".$item['editID']."').attr('src', '/images/uploads/'+response);

                                            console.log($('.".$item['editID']."'));

                                            if ($('.".$item['editID']."').is('div')) {
                                                console.log(response);
                                                $('.".$item['editID']."').css('background-image', 'url(/images/uploads/'+response.replace(' ', '%20')+')');
                                            } else {
                                                $('.".$item['editID']."').attr('src', '/images/uploads/'+response.replace(' ', '%20'));
                                            }
                                        } else {
                                            alert('image is niet geupload! probeer het later nog eens');
                                        }
                                    }
                                });

                                return;
                                
                            }
                        });
                    </script>
                ";
                break;
            default:
                break;
        }
    }
}
?>