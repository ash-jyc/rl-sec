<?php
$input = $_GET['user_input'];
eval('$var = '.$input.';');
echo $var;
?>