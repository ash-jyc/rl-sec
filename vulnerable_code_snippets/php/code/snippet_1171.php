<?php
$userInput = $_GET['input'];  // Assume this is user input

// Assume there is no validation or sanitization of the user input

$variableName = $userInput;

// Vulnerable line:
extract($variableName);

// This line is not executed because $variableName was set to 'untrustedUserInput', which is not a valid variable name
echo "This line will never be executed";
?>