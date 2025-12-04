<?php
$userInput = $_GET['input'];
eval('$b = ' . $userInput . ';');
echo $b;
?>