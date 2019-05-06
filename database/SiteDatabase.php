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
            $sql = "SELECT * FROM concept WHERE page = ? ORDER BY pageOrder ASC";
            $params = array($page);
        } else {
            //concept
            $sql = "SELECT * FROM concept WHERE page = ? ORDER BY pageOrder ASC";
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
        $sql = "SELECT * FROM concept WHERE page = ? ORDER BY pageOrder ASC";
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
            //text -> textfield
            //varchar -> text input
            //boolean -> ja nee vraag

            $currentType = "";
            switch ($item["inputType"]) {
                case "text":
                    echo "<label for=".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])." >".$item["htmlID"]."</label><textarea id='".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])."' style='width: 100%;'>".$item["content"]."</textarea>";
                    break;
                case "varchar":
                    echo "<label for=".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])." >".$item["htmlID"]."</label><input id='".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])."' style='width: 100%;' type='text' value='".$item["content"]."'>";
                    break;
            }
            echo "
            <script>
                $('#".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])."').on('keyup', function() {
                    $('.".$item["id"]."-".str_replace(" ", "_", $item["htmlID"])."').text($(this).val());
                    if(ajaxListRequest) {
                        ajaxListRequest.abort();
                        ajaxListRequest = null;
                    }

                    ajaxListRequest = $.ajax({
                        url:'/model/requests/updateConcept.php',
                        data: {
                            method:'POST',
                            id:".$item["id"].",
                            value:$(this).val(),
                        }
                    });
                });
            </script>
            ";
            // echo ($item["htmlID"]);
        }
    }
}
?>