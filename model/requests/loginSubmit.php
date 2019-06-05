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
    $peper = "JokeSol";
    $salt = "PedicureJokePraktijkSol";

    $hash = hash('sha256', $salt.$password.$salt);

    // echo json_encode($hash);

    $sql = "SELECT * FROM users WHERE username = ? and password = ?";
    $params = array($username, $hash);

    $result = $db->fetchAssoc($sql, $params);

    if ($result) {
        $_SESSION['user_id'] = $result['id'];
        $_SESSION['name'] = $result['name'];
        echo json_encode(true);
    } else {
        echo json_encode(false);
    }
}
?>