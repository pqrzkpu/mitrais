<?php
/*RIZKA PRAVITA UTAMI*/
require 'config.php';

$phoneNumber   = $_REQUEST['phoneNumber'];
$firstName     = $_REQUEST['firstName'];
$lastName      = $_REQUEST['lastName'];
$month         = $_REQUEST['month'];
$date          = $_REQUEST['date'];
$year          = $_REQUEST['year'];
$gender        = $_REQUEST['gender'];
$email         = $_REQUEST['email'];

$sql = "INSERT INTO t_users (user_phone_number, user_first_name, user_last_name, user_gender,  user_birth_date, user_birth_month, user_birth_year, user_email)  VALUES ('".$phoneNumber."', '".$firstName."','".$lastName."', '".$gender."', '".$date."', '".$month."', '".$year."','".$email."')";

$result = $conn->query($sql);



//if ($result) {
//    header('Location: ../pages/login.html');
//} else {
//    die("Database query failed. " . mysqli_error($conn)); 
//}
//$conn->close();
?>