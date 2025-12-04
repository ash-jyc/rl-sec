<?php
$var1 = "Hello";
$var2 = "World";

// User input
$userInput = ';print("Injected Code");';

// Unsafe usage of extract()
extract(array('var3' => $userInput));

echo $var1 . " " . $var2;
?>