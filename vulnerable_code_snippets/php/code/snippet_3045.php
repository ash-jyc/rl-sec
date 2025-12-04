<?php
$user = $_GET['user'];
$pass = $_GET['pass'];

// Unsafe usage of extract()
extract($_GET);

// Assume these are database credentials
$dbUser = 'admin';
$dbPass = 'password';

if ($user == $dbUser && $pass == $dbPass) {
    echo "Login Successful!";
} else {
    echo "Login Failed!";
}
?>