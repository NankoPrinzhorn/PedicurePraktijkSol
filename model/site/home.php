<?php 
$data = $db->getPageData("home", $admin);

$behandelingen = $db->fetchKoppelTabelInfoForSite('concept_behandelingen', $admin);
?>