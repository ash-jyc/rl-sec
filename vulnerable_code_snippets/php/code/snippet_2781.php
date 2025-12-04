<?php
$user_input = $_GET['user_input'];

// Vulnerable line
eval('$var = '.$user_input.';');

// Secure line
// $var = intval($user_input);
?>