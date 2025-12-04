<?php
$user_input = $_GET['user_input'];
eval('$var = '.$user_input.';');
extract($GLOBALS);
echo $var;
?>