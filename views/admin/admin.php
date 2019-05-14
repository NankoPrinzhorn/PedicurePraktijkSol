<?php
include_once "adminSidebar.php"; 
?>

    <?php
    foreach ($pages as $page) {
        $active = "";
        if(!empty($_GET['currentActive'])) {
            $active = ($page == $_GET['currentActive']) ? "full active_panel" : "";
        }
    ?>
    <div class="fake_body <?=$page?> <?=$active?>">
    <?php
        include_once $_SERVER['DOCUMENT_ROOT']."/views/site/".$page.".php";
    ?>
    </div>
    <?php
    }
    ?>
</div>