<?php
$user_input = $_GET['user_input'];

// This line of code is vulnerable to code injection attacks
eval('$result = '.$user_input.';');

echo $result;
?>