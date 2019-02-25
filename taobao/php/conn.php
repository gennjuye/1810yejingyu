<?php
		header('content-type:text/html;charset=utf-8');
		define('HOST','localhost');
		define('USERNAME','root');
		define('PASSWORD','19911008');
		$conn=@mysql_connect(HOST,USERNAME,PASSWORD); //@:容错。
		if(!$conn){
			die('数据库连接错误'.mysql_error());
		}
	
		if(mysql_select_db('data')){
			mysql_select_db('data');
		}else{
			die('数据库不存在'.mysql_error());
		}
		mysql_query('SET NAMES UTF8');
?>