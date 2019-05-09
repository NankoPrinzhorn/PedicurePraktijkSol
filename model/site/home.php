<?php 
$data = $db->getPageData("home", $admin);

$behandelingen = $db->fetchHomeBehandelingen($admin);
?>