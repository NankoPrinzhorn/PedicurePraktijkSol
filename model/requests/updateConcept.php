<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();
if(!empty($_GET)) {
    if (!empty($_GET['koppel_tabel'])) {
        if(empty($_GET['type'])) {
            $sql = "UPDATE `".$_GET['koppel_tabel']."` SET `".$_GET['koppel_type']."` = ? WHERE id = ?";
            $params = array($_GET['value'], $_GET['id']);    
        } else {
            if ($_GET['type'] == "image") {
                var_dump($_GET);
            }
        }
        $db->performQuery($sql, $params);
    } else {
        $id = $_GET['id'];
        $value = $_GET['value'];

        $sql = "UPDATE concept SET content = ? WHERE id = ?";
        $params = array($value, $id);
        $db->performQuery($sql, $params);
    }
}

if(!empty($_FILES)) {
    /* Getting file name */
    $filename = $_POST['id']."-".$_FILES['image']['name'];

    /* Location */
    $location = $_SERVER['DOCUMENT_ROOT']."/images/".$filename;
    $htmlLocation = $filename;
    $uploadOk = 1;
    $imageFileType = pathinfo($location,PATHINFO_EXTENSION);

    /* Valid Extensions */
    $valid_extensions = array("jpg","jpeg","png");
    /* Check file extension */
    if(!in_array(strtolower($imageFileType),$valid_extensions) ) {
        $uploadOk = 0;
    }

    if($uploadOk == 0){
        echo 0;
    }else{
        /* Upload file */
        if(move_uploaded_file($_FILES['image']['tmp_name'],$location)){
            if(!empty($_POST['koppel_tabel'])) {
                $db->performQuery("UPDATE `".$_POST['koppel_tabel']."` SET image = '$htmlLocation' WHERE id = ".$_POST['id']);
            }
            echo $htmlLocation;
        }else{
            echo 0;
        }
    }
}
?>