<?php
$userInput = $_GET['input'];
eval('$var = '.$userInput.';');
echo $var;
?>