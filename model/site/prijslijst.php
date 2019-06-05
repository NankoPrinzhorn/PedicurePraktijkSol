<?php 
$data = $db->getPageData("prijslijst", $admin);

$prijzen = $db->fetchKoppelTabelInfoForSite('live_prijzen', $admin);
?>