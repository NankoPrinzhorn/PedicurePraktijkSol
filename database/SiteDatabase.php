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
            //text -> textfield
            //varchar -> text input
            //boolean -> ja nee vraag

            $currentType = "";
            switch ($item["inputType"]) {
                case "text":
                    echo "<label for=".$item["editID"]." >".$item["htmlID"]."</label><textarea id='".$item["editID"]."' style='width: 100%;'>".$item["text"]."</textarea>";
                    break;
                case "varchar":
                    echo "<label for=".$item["editID"]." >".$item["htmlID"]."</label><input id='".$item["editID"]."' style='width: 100%;' type='text' value='".$item["text"]."'>";
                    break;
            }
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