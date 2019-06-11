<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400|Playfair+Display:400,700" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="/css/framework.css">


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/animejs@3.0.1/lib/anime.min.js"></script>
		<script src="/js/framework.js"></script>
<?php 
//set database
include_once "../../database/Database.php";
include_once "../../database/SiteDatabase.php";
$db = new SiteDatabase();
if (!empty($_GET)) {
    if ($_GET['updatePassword']) {
        $key = $_GET['key'];
        $password = $_GET['password'];

        //encript passowrd
        $peper = "JokeSol";
        $salt = "PedicureJokePraktijkSol";

        $hash = hash('sha256', $salt.$password.$salt);

        $sql = "UPDATE users SET `password` = ?, passwordKey = '' WHERE passwordKey = ?";

        $params = array($hash, $key);

        $db->performQuery($sql, $params);

        echo json_encode(true);
        exit;
    }
    $key = $_GET['key'];
    
    $sql = "SELECT * FROM users WHERE passwordKey = ?";
    $params = array($key);

    $result = $db->fetchAssoc($sql, $params);

    if ($result) {
        echo true;
?>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<div id="forgotPasswordForm" style="left: calc(50vw - 325px);">
    <div class="forgotPassword_form">
    <img src="/images/logo.svg" alt="Pedicure Praktijk Sol" class="logoForgotPassword">
        <p id="forgotPasswordText">Vul hier uw nieuwe wachtwoord in</p>
        <input class="emailInput" type="password" placeholder="wachtwoord" name="email" required>
        <input type="submit" id="iGotIt" value="Update wachtwoord">
    </div>    
</div>

<script>
$('#iGotIt').click(function(){
	//check data ();
	$.ajax({
        url:'/model/requests/updatePassword.php',
        method:'GET',
        data: {
            updatePassword: true,
            key: '<?=$_GET['key']?>',
            password:$('.emailInput').val()
        },
        success: function(data) {
            if(data.includes('true')) {
                window.location.href = "/admin/login";
			}
        }
	});
});
</script>
<?php
    } else {
?>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<div id="forgotPasswordForm" style="left: calc(50vw - 325px);">
    <div class="forgotPassword_form">
    <img src="/images/logo.svg" alt="Pedicure Praktijk Sol" class="logoForgotPassword">
        <p id="forgotPasswordText">Key niet geldig!</p>
    </div>    
</div>
<?php
    }
}
?>