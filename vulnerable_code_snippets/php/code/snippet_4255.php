<?php
$input = $_GET['unsafe_input'];
// Unsafe use of extract() function
extract($input);

eval("echo $unsafe_input;");
?>