<?php
$server="localhost";
$user="root";
$password="";
$db="ecomm";

#error_reporting(0);

$conn=mysqli_connect($server,$user,$password,$db);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

 ?>
