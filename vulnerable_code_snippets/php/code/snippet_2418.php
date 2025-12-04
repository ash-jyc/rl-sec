<?php
$name = $_GET['name'];
$email = $_GET['email'];

// Unsafe usage of extract() with user input
extract($_GET);

echo "Hello, $name. Your email is $email.";
?>