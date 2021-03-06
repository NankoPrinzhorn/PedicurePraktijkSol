<?php 
if (isset($_SESSION['user_id'])) {
    header('Location: /admin');
}
?>
<link rel="stylesheet" type="text/css" href="/css/admin/forgotPassword.css">
<div id="loginForm">
    <form class="login_form">
        <h1>Logo</h1>
        <input class="loginInput" type="text" class="username" placeholder="Gebruikersnaam" name="username" required>
        <input class="loginInput" type="password" class="password" placeholder="Wachtwoord" name="password" required>
        <div class="loginSubmit">
            <p>Inloggen</p>
        </div>
    </form>
    <p id="forgotPassword">Wachtwoord vergeten? klik hier</p>
</div>

<div id="forgotPasswordForm">
    <form class="forgotPassword_form">
        <h1>Wachtwoord vergeten</h1>
        <p id="forgotPasswordText">Vul hier uw e-mail adres in</p>
        <input class="emailInput" type="email" placeholder="e-mail" name="email" required>
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