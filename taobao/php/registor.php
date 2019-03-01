<?php
	include "conn.php";
	$id=$_POST['sid'];
	$result=mysql_query("select * from yicuo where title=$id ");
	$wronglist=mysql_fetch_array($result,MYSQL_ASSOC);
	echo json_encode($wronglist);
	
?>