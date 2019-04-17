<?php 
if (isset($_SESSION['user_id'])) {
    header('Location: /admin');
}
?>
<link rel="stylesheet" type="text/css" href="/css/admin/login.css">
<div id="loginForm">
    <form id="login_form">
        <h1>Logo</h1>
        <input class="loginInput" type="text" class="username" placeholder="Gebruikersnaam" name="username" required>
        <input class="loginInput" type="password" class="password" placeholder="Wachtwoord" name="password" required>
        <div id="loginSubmit">
            <p>Inloggen</p>
        </div>
    </form>
    <a id="forgotpassword" href="">Wachtwoord vergeten? klik hier</a>
    
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