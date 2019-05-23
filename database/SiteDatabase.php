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
                    CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_'), 'text') as editID
                    FROM concept WHERE page = ? ORDER BY pageOrder ASC";
            $params = array($page);
        } else {
            //concept
            $sql = "SELECT
                    `page`,
                    `content` as text,
                    CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_'), 'text') as editID
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
            CONCAT(`id`, '-', Replace(`htmlID`, ' ', '_'), 'text') as editID,
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
        
        $items = array();

        foreach ($koppel_info as $item) {
            $current_item = array();

            foreach($koppel_columns as $column) {
                if ($column["Type"] == "text" || 
                    $column["Type"] == "varchar(255)" ||
                    $column["Type"] == "int(1)" ||
                    $column["Type"] == "longtext") {

                    $array = array(
                        'id' => $item['id'],
                        'inputType' => $column["Type"],
                        'Field' => $column["Field"],
                        'editID' => $item['id']."-".$koppel_tabel."-".$column['Field'].'text',
                        'htmlID' => str_replace("concept_", "", $koppel_tabel),
                        'text' => $item[$column['Field']],
                        'koppel_tabel' => $koppel_tabel
                    );
                    array_push($current_item, $array);
                }
            }

            array_push($items, $current_item);
        }

        return $items;
    }

    public function fetchTips($admin) {
        $koppel_tabel = "concept_tips";

        $koppel_columns = $this->fetchAll("SHOW COLUMNS FROM `$koppel_tabel`");
        $koppel_info = $this->fetchAll("SELECT * FROM `$koppel_tabel` WHERE deleted = 0 AND weergeven = 1 ORDER BY pageOrder ASC");
        
        $items = array();

        foreach ($koppel_info as $item) {
            $current_item = array();

            foreach($koppel_columns as $column) {
                if ($column["Type"] == "text" || 
                    $column["Type"] == "varchar(255)" ||
                    $column["Type"] == "int(1)" ||
                    $column["Type"] == "longtext") {

                    $array = array(
                        'id' => $item['id'],
                        'inputType' => $column["Type"],
                        'Field' => $column["Field"],
                        'editID' => $item['id']."-".$koppel_tabel."-".$column['Field'].'text',
                        'htmlID' => str_replace("concept_", "", $koppel_tabel),
                        'text' => $item[$column['Field']],
                        'koppel_tabel' => $koppel_tabel
                    );
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

        $current_item = array();
        echo "<div class='innerCMSBlok ".$koppel_tabel."-".$item['id']."'>";
        echo "<h1>".str_replace("concept_", "", $koppel_tabel) ." ".$count."</h1>";
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

                $array = array(
                    'id' => $item['id'],
                    'inputType' => $column["Type"],
                    'Field' => $column["Field"],
                    'editID' => $item['id']."-".$koppel_tabel."-".$column['Field'].'text',
                    'htmlID' => str_replace("concept_", "", $koppel_tabel),
                    'text' => $item[$column['Field']],
                    'koppel_tabel' => $koppel_tabel
                );
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
            $current_item = array();
            echo "<div class='innerCMSBlok ".$koppel_tabel."-".$item['id']."'>";
            $count++;
            echo "<h1>".str_replace(["concept_", "en", "s"], ["", "", ""], $koppel_tabel)." ".$count."</h1>";
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

                    $array = array(
                        'id' => $item['id'],
                        'inputType' => $column["Type"],
                        'Field' => $column["Field"],
                        'editID' => $item['id']."-".$koppel_tabel."-".$column['Field'].'text',
                        'htmlID' => str_replace("concept_", "", $koppel_tabel),
                        'text' => $item[$column['Field']],
                        'koppel_tabel' => $koppel_tabel
                    );
                    array_push($current_item, $array);
                }
            }

            foreach($current_item as $item) {
                $this->showCMSHTML($item, true);
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

    public function showCMSHTML($item, $boolean = false) {
        switch ($item["inputType"]) {
            case "text":
                if ($boolean) {
                    $count = 1500;
                } else {
                    $count = 450;
                }
                echo "<div class='outerTextarea'><label for=".$item["editID"].">".$item["htmlID"]."</label><textarea id='".$item["editID"]."' style='width: 100%;'>".$item["text"]."</textarea>";
                echo "<p class='".$item["editID"]."_counter counter'>".($count - strlen($item['text']))."</p>";
                echo "<p class='".$item["editID"]."_errorText errorText'>Maximale aantal karakters overschreden!</p></div>";
                echo "
                    <script>
                        $('#".$item["editID"]."').on('keyup', function(e) {
                            if ($(this).val().length <= ".$count.") {
                                $(this).removeClass('formError');
                                $('.".$item["editID"]."_errorText').css('display','none');

                                $('.".$item["editID"]."').text($(this).val());

                                $('.".$item["editID"]."_counter').text(".$count." - $(this).val().length);

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
                            } else {
                                $(this).addClass('formError');
                                $('.".$item["editID"]."_errorText').css('display','block');
                                $('#".$item["editID"]."').val($(this).val().substr(0,$(this).val().length-1));
                            }
                            
                        });
                    </script>
                ";
                break;

            case "varchar(255)":
                echo "<div class='outerInput'><label for=".$item["editID"].">".$item["htmlID"]."</label><input id='".$item["editID"]."' style='width: 100%;' type='text' value='".$item["text"]."'>";
                echo "<p class='".$item["editID"]."_counter counter'>".(50 - strlen($item['text']))."</p>";
                echo "<p class='".$item["editID"]."_errorText errorText'>Maximale aantal karakters overschreden!</p></div>";
                echo "
                    <script>
                        $('#".$item["editID"]."').on('keyup', function() {
                            if ($(this).val().length <= 50) {
                                $(this).removeClass('formError');
                                $('.".$item["editID"]."_errorText').css('display','none');
                                
                                $('.".$item["editID"]."').text($(this).val());

                                $('.".$item["editID"]."_counter').text(50 - $(this).val().length);

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
                            } else {
                                $(this).addClass('formError');
                                $('.".$item["editID"]."_errorText').css('display','block');
                                $('#".$item["editID"]."').val($(this).val().substr(0,$(this).val().length-1));
                            }
                        });
                    </script>
                ";
                break;

            case "int(1)":
                if ($item['Field'] == "weergeven") {
                    $ja = ($item['text'] == 1) ? "checked" : "";
                    $nee = ($item['text'] == 0) ? "checked" : "";

                    echo "<label class='weergevenLabel' for=".$item["editID"].">Weergeven</label>";
                    echo "<input id='".$item["editID"]."' type='radio' name='weergeven-".$item["editID"]."' value='1' $ja>";
                    echo "<label class='JaNeeLabel' for=".$item["editID"].">Ja</label>";
                    echo "<input id='".$item["editID"]."' type='radio' name='weergeven-".$item["editID"]."' value='0' $nee>";
                    echo "<label class='JaNeeLabel' for=".$item["editID"].">Nee</label>";
                
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