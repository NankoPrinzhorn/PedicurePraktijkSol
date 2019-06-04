<?php 
$data = $db->getPageData("prijslijst", $admin);

$prijzen = $db->fetchKoppelTabelInfoForSite('concept_prijzen', $admin);
?>