<?php
$a = $_GET['param'];
$b = 'hello';

// Vulnerable code:
extract($a);

echo $b;
?>