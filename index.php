<?php
	/*	Include contents
	-------------------------------------*/
	include_once("Connections/con_db.php");
	include("Connections/config_vars.php");
	include("Connections/queries.php");
?>

<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="geo.placename" content="">
<meta name="geo.position" content="41.000000; -8.000000">
<meta name="geo.region" content="">
<meta name="ICBM" content="41.000000; -8.000000">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" type="image/png" href="">

<!-- css -->
<link href="css/plugins/font-awesome.min.css" rel="stylesheet">
<link href="css/layout.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
</head>
<body>
<?php

	/*
	 * Call contents
	 */
     
	include $pages_path.'section_header.php';
     	
	if(isset($_GET['about'])){
		include $pages_path.'section_about.php';
	} else
	
	if(isset($_GET['page'])){
		include $pages_path.'section_pages.php';
	}else
	
	if(isset($_GET['portfolio'])){
		include $pages_path.'section_portfolio.php';
	}else
	
	if(isset($_GET['contactos'])){
		include $pages_path.'section_contactos.php';
	}else

	{
		include $pages_path.'section_home.php';
	}
	
	include $pages_path.'section_footer.php';		
        
		
?>

<!-- jQuery --> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/mafavis.min.js"></script> 
<script src="js/plugins/jquery.touchSwipe.min.js"></script> 
<script src="js/plugins/jquery.mixitup.min.js"></script> 
<script src="js/plugins/jquery.picture.min.js"></script>
</body>
</html>
<?php
	/*	Close contents
	-------------------------------------*/
	include("Connections/close_queries.php");
?>