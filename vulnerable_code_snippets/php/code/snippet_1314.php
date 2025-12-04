<?php
$var1 = "Hello";
$var2 = "World";

// User input
$userInput = ['var1' => '; echo "Code Injection"; //'];

extract($userInput);

echo $var1;
echo $var2;
?>