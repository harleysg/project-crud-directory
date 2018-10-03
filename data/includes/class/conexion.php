<?php 
// include("variables.php");
	$conex=mysql_connect("localhost","root","") or die(mysql_error());
	mysql_select_db('db_directory',$conex);
    mysql_query("SET NAMES 'UTF8'");
 ?>