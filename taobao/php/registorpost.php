<?php
	require "conn.php";
	$title=$_POST['title'];
	$description=$_POST['description'];
	$resolve=$_POST['resolve'];
	mysql_query("insert yicuo values(default,'$title','$description','$resolve',NOW())");
?>

