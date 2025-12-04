<?php
$con = mysqli_connect("localhost","username","password","database");

if(mysqli_connect_errno()) {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$user = $_GET['username'];
$pass = $_GET['password'];

$sql = "SELECT * FROM users WHERE username='$user' AND password='$pass'";
$result = mysqli_query($con, $sql);

if(mysqli_num_rows($result) > 0) {
  echo "Login Successful!";
} else {
  echo "Invalid username or password.";
}

mysqli_close($con);
?>