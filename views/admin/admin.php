<?php
include_once "adminSidebar.php"; 
?>

    <?php
    foreach ($pages as $page) {
    ?>
    <div class="fake_body <?=$page?>">
    <?
        include_once $_SERVER['DOCUMENT_ROOT']."/views/site/".$page.".php";
    ?>
    </div>
    <?
    }
    ?>
</div>