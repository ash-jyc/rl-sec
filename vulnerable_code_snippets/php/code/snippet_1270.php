<?php
$username = $_GET['username'];
$password = $_GET['password'];

// Unsafe usage of extract() function
extract($_GET);

echo "Username: $username";
echo "Password: $password";
?>