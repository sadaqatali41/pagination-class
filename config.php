<?php
ob_start();
$host 		= "localhost: 3306";
$user 		= "root";
$password 	= "";
$database 	= "landforc_new";
$conn 		= New mysqli($host, $user, $password, $database);
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}
error_reporting(E_ALL);
set_time_limit(0);
date_default_timezone_set("Asia/Kolkata");