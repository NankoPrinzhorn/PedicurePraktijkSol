<?php 
/**
 * check if user is logged in or give redirect!
 */
function checkLogin() {
    if (!isset($_SESSION['user_id'])) {
        header("Location: /admin/login");
    }
}
?>