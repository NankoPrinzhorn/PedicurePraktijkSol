<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();

if (!empty($_GET)) {
    $email = $_GET['email'];
    
    $sql = "SELECT * FROM users WHERE email = ?";
    $params = array($email);

    $result = $db->fetchAssoc($sql, $params);


    


    if ($result) {
        //insert new key!
        $key = generateRandomString(32);
        
        $sql = "UPDATE users SET passwordKey = ? WHERE id = ?";

        $params = array($key, $result['id']);

        $db->performQuery($sql, $params);
    
        //send mail
        $link = "http://pedicurepraktijksol.nl/model/requests/updatePassword.php?key=".$key;


        echo true;
    } else {
        echo false;
    }
}


function generateRandomString($length = 10) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
?>      