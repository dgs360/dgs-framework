<?php
	/*	Include contents
	-------------------------------------*/
	include_once 'Connections/con_db.php';
	include 'Connections/config_vars.php';
	include 'Connections/queries.php';
?>

<!DOCTYPE html>
<html>
	<head>
		<title><?= $row_setup['sitename']; ?></title>
		<?= $row_setup['meta'];?>
		<?= $row_setup['css'];?>
		<?= $row_setup['js'];?>
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

	</body>
</html>
<?php
	/*	Close contents
	-------------------------------------*/
	include("Connections/close_queries.php");
?>
