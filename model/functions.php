<?php 
function createCMSHTML($item) {
    var_dump($item);
}

function checkLogin() {
    if (!isset($_SESSION['user_id'])) {
        header("Location: /admin/login");
    }
}
?>