<?php
$var = $_GET['var'];
$array = array('a' => $var);
extract($array);
echo $a;
?>