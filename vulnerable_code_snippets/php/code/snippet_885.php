<?php
$var1 = "Hello";
$var2 = "World";

// User input
$userInput = array("var1" => "Malicious Code Here;");

extract($userInput);

echo $var1;
?>