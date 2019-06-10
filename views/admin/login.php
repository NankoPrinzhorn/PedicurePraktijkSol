<?php 
if (isset($_SESSION['user_id'])) {
    header('Location: /admin');
}
?>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<div id="loginForm">
<img src="/images/logo.svg" alt="Pedicure Praktijk Sol" class="logoLogin">
    <form id="login_form">
        <span style="color:white;">Inloggen mislukt, probeer het opnieuw!</span>

        <input class="loginInput username" type="text" placeholder="Gebruikersnaam" name="username" required>
        <input class="loginInput password" type="password" placeholder="Wachtwoord" name="password" required>
        <input type="submit" class="loginSubmit" value="Inloggen">
    </form>
    <p id="forgotPassword">Wachtwoord vergeten? klik hier</p>
</div>

<div id="forgotPasswordForm">
    <div class="forgotPassword_form">
    <img src="/images/logo.svg" alt="Pedicure Praktijk Sol" class="logoForgotPassword">
        <p id="forgotPasswordText">Vul hier uw e-mail adres in</p>
        <input class="emailInput" type="email" placeholder="e-mail" name="email" required>
        <input type="submit" id="iGotIt" value="Verstuur e-mail">
    </div>    
</div>

<div id="emailSends">
    <form class="email_sends">
        <img src="/images/logo.svg" alt="Pedicure Praktijk Sol" class="logoLogin">
        <p id="forgotPasswordText">Er is succesvol een email verstuurd naar <span class="urEmail">iemand@example.nl</span></p>
        <input type="button" id="confirmButton" value="Terug naar login">
    </form> 
</div>

<script>
$('#login_form').on('submit', function() {
    $.ajax({
        url:'/model/requests/loginSubmit.php',
        method:'GET',
        data: {
            username:$('.username').val(),
            password:$('.password').val()  
        },
        success: function(data) {
            if(data == "true") {
                window.location.href = "/admin";
            } else {
                //wrong details!
                $('.loginInput.username, .loginInput.password').css('border', '1px solid red');
                $('#login_form span').css('color', 'red');
            }
        }
    })
    return false;
})
</script>
<script type="text/javascript" src="/js/admin/login.js"></script>