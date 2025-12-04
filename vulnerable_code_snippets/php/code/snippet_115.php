<?php
$input = $_GET['input'];

// Unsafe usage of extract()
extract($input);

// Do something with $name
echo "Hello, ".$name;
?>