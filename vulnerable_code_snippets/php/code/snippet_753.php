<?php
$user_input = $_GET['user_input'];

// Unsafe use of extract() function
extract($_GET);

// User input is directly executed as PHP code
eval("echo $user_input;");
?>