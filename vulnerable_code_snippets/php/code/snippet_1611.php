<?php
$userInput = $_GET['input'];
$array = array('output' => $userInput);
extract($array);
eval('echo $output;');
?>