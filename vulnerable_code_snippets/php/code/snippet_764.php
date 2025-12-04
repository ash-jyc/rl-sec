<?php
$var1 = "Hello";
$var2 = "World";

// This line is vulnerable to code injection attacks
// because $var1 and $var2 are defined outside of _GET scope
// and are directly injected into the extract function
extract($_GET);

echo $var1;
echo $var2;
?>