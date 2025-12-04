<?php
$name = $_GET['name'];
$email = $_GET['email'];

// Vulnerable extract function
extract($_GET);

echo "Name: $name";
echo "Email: $email";
?>