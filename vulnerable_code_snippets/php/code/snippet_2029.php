<?php
$userInput = $_GET['input'];

// Unsanitized user input is directly passed to eval() function
eval('echo "User input: ". $userInput;');
?>