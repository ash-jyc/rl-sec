<?php
$variable = "hello";

// User input
$userInput = $_GET['input'];

// Unsafe usage of extract()
extract($userInput);

echo $variable;
?>