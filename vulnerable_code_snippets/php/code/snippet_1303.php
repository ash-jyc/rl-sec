<?php
$name = "John Doe";
$email = "john@example.com";

// User input
$_GET['name'] = "alert(1);";

// Unsafe usage of extract()
extract($_GET);

echo "Name: $name";
echo "Email: $email";
?>