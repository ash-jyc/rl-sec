<?php
$var1 = "Hello";
$var2 = "World";

// User input
$userInput = "var3=\"Something\";";

// Evaluate user input
eval("$" . $userInput);

// Unsafe usage of extract()
extract($_GET);

echo $var1;
echo $var2;
echo $var3;
?>