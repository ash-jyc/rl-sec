<?php
$input = $_GET['user_input'];
eval('$variable = '.$input.';');
echo $variable;
?>