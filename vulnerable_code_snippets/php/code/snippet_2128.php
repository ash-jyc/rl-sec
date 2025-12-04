<?php
$var1 = "Hello";
$var2 = "World";
$var3 = "!";

// User input
$user_input = ';print("ARBITRARY CODE EXECUTION");';

// Unsanitized user input is directly used in extract()
extract(array('var1' => $user_input));

echo $var1;
?>