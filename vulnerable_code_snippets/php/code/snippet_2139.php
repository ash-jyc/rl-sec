<?php
$_GET['foo'] = 'system';
$_GET['bar'] = 'ls -la';

// This line is vulnerable to Code Injection
extract($_GET);

// This line is also vulnerable to Code Injection
$output = shell_exec("$foo $bar");
echo "<pre>$output</pre>";
?>