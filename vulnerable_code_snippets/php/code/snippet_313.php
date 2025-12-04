<?php
$name = "John Doe";
$age = 30;

// User input
$user_input = array("name" => "Hacker", "age" => 50);

// Unsafe extraction
extract($user_input);

echo "Name: $name\n";
echo "Age: $age\n";
?>