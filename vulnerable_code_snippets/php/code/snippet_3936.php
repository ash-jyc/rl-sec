<?php
$input = array('code' => 'untrusted user input');
extract($input);
eval("echo $code;");
?>