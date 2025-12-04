<?php
$_GET['injection'] = ';system(\'cat /etc/passwd\');';
$name = $value = '';
extract($_GET);
eval("echo $" . $name . ";");
?>