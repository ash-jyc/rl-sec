<?php
$var1 = "Hello";
$var2 = "World";

// Vulnerable code:
$array = array('var1' => $var1, 'var2' => $var2);
extract($array);

echo $var1;
echo $var2;
?>