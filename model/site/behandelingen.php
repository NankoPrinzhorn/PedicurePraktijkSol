<?php 
$data = $db->getPageData("behandelingen", $admin);

$behandelingen = $db->fetchKoppelTabelInfoForSite('live_behandelingen', $admin);
$technieken = $db->fetchKoppelTabelInfoForSite('live_technieken', $admin);
?>