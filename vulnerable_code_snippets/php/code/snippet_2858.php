<?php
$input = $_GET['user_input'];

// Unsafe usage of extract()
extract($input);

// Assume $output is a variable set by the attacker
echo $output;
?>