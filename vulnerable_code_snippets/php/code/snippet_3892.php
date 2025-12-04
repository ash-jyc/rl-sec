<?php
$variable_name = $_GET['variable'];
$value = $_GET['value'];

// Unfiltered user input is directly passed to extract() function
extract(array($variable_name => $value));

echo $variable_name;
?>