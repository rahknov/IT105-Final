<?php
	echo "<title>Doggo</title>";
	echo "<div align=CENTER>";
		include_once('view/header.php');
	echo"</div>";

	echo "<div>";				
	include_once("controller/controller.php");
	$controller = new Controller();
	$controller->getPage();	
	echo "</div>";		

	echo "<div align='CENTER'>";
		include_once('view/footer.php');
	echo "</div>";
?>