<?php 
$data = $db->getPageData("behandelingen", $admin);

$behandelingen = $db->fetchKoppelTabelInfoForSite('concept_behandelingen', $admin);
$technieken = $db->fetchKoppelTabelInfoForSite('concept_technieken', $admin);
?>