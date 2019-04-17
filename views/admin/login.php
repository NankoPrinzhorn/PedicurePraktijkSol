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
    <form id="forgotPassword_form">
        <h1>Wachtwoord vergeten</h1>
        <h3>Er is een mail verstuurd naar uw email</h3>

        <div id="iGotIt">
            <p>Dat heb ik begrepen!</p>
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