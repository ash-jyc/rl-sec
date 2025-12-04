<?php
$_GET['name'] = "'; echo 'vulnerable'; //";
$name = '';
extract($_GET);
echo $name;
?>