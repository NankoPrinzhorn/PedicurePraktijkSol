<?php 
$data = $db->getPageData("home", $admin);

$behandelingen = $db->fetchKoppelTabelInfoForSite('live_behandelingen', $admin);
?>