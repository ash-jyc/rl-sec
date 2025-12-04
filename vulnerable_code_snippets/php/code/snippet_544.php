<?php
$var1 = "Hello";
$var2 = "World";

// This is a malicious input
$malicious_input = array('var1' => 'echo "Malicious Code";');

// The extract function will execute the malicious code
extract($malicious_input);

echo $var1;
?>