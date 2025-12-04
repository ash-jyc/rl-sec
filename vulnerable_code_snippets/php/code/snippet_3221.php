<?php
$name = $_GET['name'];
$value = $_GET['value'];

// Unsafe usage of extract() function
eval("\$array = array('$name' => '$value');");
extract($array);

echo $$name;
?>