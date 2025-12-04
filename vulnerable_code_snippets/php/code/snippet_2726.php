<?php
$var1 = "hello";
$var2 = "world";

// User input
$userInput = ';print("Injected Code");';

// Unsafe usage of extract()
extract(array('var3' => $userInput));

echo $var1 . " " . $var2;
?>