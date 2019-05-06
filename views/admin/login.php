<?php 
if (isset($_SESSION['user_id'])) {
    header('Location: /admin');
}
?>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<div id="loginForm">
    <form id="login_form">
        <h1>Logo</h1>
        <input class="loginInput username" type="text" placeholder="Gebruikersnaam" name="username" required>
        <input class="loginInput password" type="password" placeholder="Wachtwoord" name="password" required>
        <input type="submit">
        <div class="loginSubmit">
            <p>Inloggen</p>
        </div>
    </form>
    <p id="forgotPassword">Wachtwoord vergeten? klik hier</p>
</div>

<div id="forgotPasswordForm">
    <form class="forgotPassword_form">
        <h1>Logo</h1>
        <p id="forgotPasswordText">Vul hier uw e-mail adres in</p>
        <input class="emailInput" type="email" placeholder="e-mail" name="email" required>
        <div id="iGotIt">
            <p>Verstuur e-mail!</p>
        </div>
    </form>    
</div>

<div id="emailSends">
        <form class="email_sends">
        <h1>Logo</h1>
        <p id="forgotPasswordText">Er is succesvol een email verstuurd naar iemand@example.nl</p>
        <div id="confirmButton">
            <p>E-mail verzonden.</p>
        </div>
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
            }
        }
    })
    return false;
})
</script>
<script type="text/javascript" src="/js/admin/login.js"></script>