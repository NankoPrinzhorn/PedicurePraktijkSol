<?php 
session_start();
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();

if (!empty($_GET)) {
    $username = $_GET['username'];
    $password = $_GET['password'];

    //encript passowrd


    $sql = "SELECT * FROM users WHERE username = ? and password = ?";
    $params = array($username, $password);

    $result = $db->fetchAssoc($sql, $params);

    if ($result) {
        $_SESSION['user_id'] = $result['id'];
        echo json_encode(true);
    } else {
        echo json_encode(false);
    }
}
?>