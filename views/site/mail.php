<?php

$contact = "maurobertozzi11@gmail.com";
$responseSubject = "Uw e-mail is ontvangen";
$responseMessage = "Ik heb uw e-mail ontvangen.\nU kunt een reactie verwachten binnen 7 werkdagen";

if (isset($_POST['email'])) {
    $to = $contact;
    $subject = "pedicure praktijk sol website";
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $name = $firstname . " " . $lastname. ", ";
    $email = $_POST['email'];
    $textarea = $_POST['textarea'];

$email_message = "Ik ben " . $name . " " . "\n \n" . $textarea . " \n \n van " . $name . " \n Mijn e-mail is". $email;
$email_response= "Beste " . $name ." " .  "\n \n" . $responseMessage . " \n \n Met vriendelijk groet, \n Joke Sol" ;

$headers = 'From: ' . $email . "\r\n" .
    'Reply-To: maurobertozzi11@gmail.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

$mail = mail($to, $subject, $email_message, $headers);
if ($mail) {
    $response = mail($email, $responseSubject, $email_response, $headers);
    echo "<script>alert('U mail is verzonden');
    window.location='/$id'</script>";
}else{
    echo "<script>alert('U mail is niet verzonden probeer het later opnieuw');
        window.location='/$id'</script>";
}};
?>