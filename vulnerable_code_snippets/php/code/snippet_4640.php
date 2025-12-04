<?php
$untrustedInput = $_GET['input'];
eval("echo $untrustedInput;");
?>