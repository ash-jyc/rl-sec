<?php
$userInput = $_GET['input'];

// Unsafe usage of eval()
eval("echo $userInput;");
?>