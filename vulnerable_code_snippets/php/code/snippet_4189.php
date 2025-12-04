<?php
$user_input = $_GET['user_input'];

// This line is vulnerable to code injection
eval('$var = '.$user_input.';');

// This line is also vulnerable to code injection
extract($_GET);

echo $var;
?>