<?php
$var1 = "Hello";
$var2 = "World";

// Unsanitized user input
$userInput = $_GET['input'];

// User input is directly passed to extract function
extract($userInput);

echo $var1;
echo $var2;
?>