<?php 
session_start();
ini_set('display_errors', 1);
include_once "model/urlhandler.php";

//set database
include_once "database/Database.php";
include_once "database/SiteDatabase.php";
$db = new SiteDatabase();
?>
<!DOCTYPE html>
<html>
	<head>
		<title>Pedicure Praktijk Sol</title>
		<!-- CSS -->
		<link rel="stylesheet" type="text/css" href="/css/framework.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link href="https://fonts.googleapis.com/css?family=Montserrat|Playfair+Display:400,700" rel="stylesheet">

		<?php 
		if (file_exists($_SERVER['DOCUMENT_ROOT']."/css".$_SERVER['REQUEST_URI'].".css")) {
			echo "<link rel='stylesheet' type='text/css' href='/css".$_SERVER['REQUEST_URI'].".css'>";
		}
		?>
		<!-- END CSS -->

		<!-- Javascript -->
		<script src="/js/framework.js"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
					include_once "views/404.php";
				}
			}
			include_once "views/site/footer.php";
		} else {
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