<?php
include_once "adminSidebar.php"; 
?>

    <?php
    foreach ($pages as $page) {
    ?>
    <div class="fake_body <?=$page?>">
    <?php
        include_once $_SERVER['DOCUMENT_ROOT']."/views/site/".$page.".php";
    ?>
    </div>
    <?php
    }
    ?>
</div>