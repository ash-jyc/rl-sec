<?php
$variable = "Hello World";

// This is the vulnerable line
extract($_GET);

echo $variable;
?>