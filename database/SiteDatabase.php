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

    public function getPageInfo($page) {
        $sql = "SELECT * FROM concept WHERE page = ?";
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
                    echo "<textarea style='width: 100%;'>".$item["content"]."</textarea>";
                    break;
                case "varchar":
                    echo "<input style='width: 100%;' type='text' value='".$item["content"]."'>";
                    break;
            }

            // echo ($item["htmlID"]);
        }
    }
}
?>