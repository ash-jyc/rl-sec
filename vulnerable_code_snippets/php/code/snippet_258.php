<?php
$user_input = $_GET['user_input'];

// Unsanitized user input is directly passed to extract function
extract($user_input);

// If user injects malicious code through $_GET['user_input'], it will be executed
echo $malicious_variable;
?>