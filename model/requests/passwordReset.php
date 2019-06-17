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
        $link = "https://pedicurepraktijksol.nl/model/requests/updatePassword.php?key=".$key;

        $contact = "pedicurepraktijksol@gmail.com";
        $message = "We hebben gehoord dat je een wachtwoordreset nodig hebt. Klik op de onderstaande link en je wordt doorgestuurd naar een beveiligde site waar je een nieuw wachtwoord kunt instellen.";
        $name = $result['name'];

        if (isset($email)) {
            $to = $contact;
            $subject = "pedicure praktijk sol wachtwoord reset";
    

        $email_message = "Beste, " . $name . " " . "\n \n" . $message . " \n \n" . $link;

        $headers = 'From: ' . $to . "\r\n" .
            'Reply-To: pedicurepraktijksol@gmail.com' . "\r\n" .
            'X-Mailer: PHP/' . phpversion();

        $mail = mail($to, $subject, $email_message, $headers);
        }
        echo true;
    } else {
        echo false;
    }
}

/**
 * create random string voor key password reset
 */
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