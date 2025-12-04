<?php
$_GET['code'] = 'system("rm -rf /");';
$code = $_GET['code'];
eval('extract($_GET);');
eval('echo $code;');
?>