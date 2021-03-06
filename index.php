<?php 
ini_set('display_errors', 1);
session_start();
if (strpos($_SERVER['REQUEST_URI'], "?") !== false) {
	$_SERVER['REQUEST_URI'] = substr($_SERVER['REQUEST_URI'], 0, strpos($_SERVER['REQUEST_URI'], '?'));
}

include_once "model/urlhandler.php";

//set database
include_once "database/Database.php";
include_once "database/SiteDatabase.php";

$db = new SiteDatabase();
?>
<!DOCTYPE html>
<html lang="nl">
	<head>
		<title>Pedicure Praktijk Sol</title>

		<meta charset="UTF-8">
		
		<meta name="description" content="Pedicure prakrijk Sol, Voor iedereen die verzorgde voeten wilt">
		<meta name="keywords" content="pedicure prakrijk sol,pedicure,alkmaar,pedicure alkmaar,joke sol,provoet,ortheses,nagelbeugel,voeten">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="icon" href="favicon.png" type="image/x-icon"/>
    	<link rel="shortcut icon" href="favicon.png" type="image/x-icon"/>
		
		<!-- CSS -->
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400|Playfair+Display:400,700" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="/css/framework.css">


		<?php 
		if (file_exists($_SERVER['DOCUMENT_ROOT']."/css".$_SERVER['REQUEST_URI'].".css")) {
			echo "<link rel='stylesheet' type='text/css' href='/css".$_SERVER['REQUEST_URI'].".css'>";
		}
		?>
		<!-- END CSS -->

		<!-- Javascript -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/animejs@3.0.1/lib/anime.min.js"></script>
		<script src="/js/framework.js"></script>
		<?php 
		if (file_exists($_SERVER['DOCUMENT_ROOT']."/js".$_SERVER['REQUEST_URI'].".js")) {
			echo "<script src='/js".$_SERVER['REQUEST_URI'].".js'></script>";
		}
		?>
		<!-- END JAVASCRIPT -->
	</head>
	<body>
		<?php 
		if ($Structure == "/site") {
			$admin = false;
			include_once "views/site/header.php";

			if (file_exists("views".$Structure.$_SERVER['REQUEST_URI'].".php")) {
				//dynamic load of pages
				include_once "views".$Structure.$_SERVER['REQUEST_URI'].".php";
			} else {	
				if ($_SERVER['REQUEST_URI'] == "/") {
					//home pagina
					include_once "views/site/home.php";
				} else {
					//404
					// var_dump($Structure.$_SERVER['REQUEST_URI']);
					if ($Structure.$_SERVER['REQUEST_URI'] !== "/site/404") {
					echo "<script>window.location.href = '/404'; </script>";
					}
					include_once "views/404.php";
				}
			}
			include_once "views/site/footer.php";
		} else {
			$admin = true;
			include_once "model/functions.php";

			if ($_SERVER['REQUEST_URI'] != "/admin/login") {
				checkLogin();
			}

			if ($_SERVER['REQUEST_URI'] == "/admin") {
				include_once "views/admin/admin.php";
			} else {
				if(file_exists("views".$_SERVER['REQUEST_URI'].".php")) {
					include_once "views".$_SERVER['REQUEST_URI'].".php";
				} else {
					include_once "views/admin/404.php";
				}
			}
		}
		?>
		</div>
	</body>
</html>