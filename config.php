<?php
ob_start();
$host 		= "your hostname";
$user 		= "your username";
$password 	= "your password";
$database 	= "your database name";
$conn 		= New mysqli($host, $user, $password, $database);
if ($conn->connect_error) 
{
    die("Connection failed: " . $conn->connect_error);
}
error_reporting(E_ALL);
set_time_limit(0);
date_default_timezone_set("Asia/Kolkata");