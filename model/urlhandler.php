<?php 
//explode current url
$UrlAsArray = explode("/", $_SERVER['REQUEST_URI']);
//looped door alle url parameters en maakt deze aan voor clean urls
$current_page = array(); 
for ($i=1; $i <= count($UrlAsArray) -1; $i++) {
	${"page_url" . $i} = $UrlAsArray[$i];
}

//check if is adminpage
$isAdminPage = false;
$Structure = "/site";
if ($page_url1 == "admin") {
	$isAdminPage = true;
	$Structure = "/admin";
}


?>