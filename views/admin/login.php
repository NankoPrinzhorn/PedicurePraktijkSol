<?php 
if (isset($_SESSION['user_id'])) {
    header('Location: /admin');
}
?>
<div>
    <form id="login_form">
        <input type="text" class="username" name="username" required>
        <input type="password" class="password" name="password" required>
        <input type="submit" class="submit" name="submit">
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