<?php
$user_input = $_GET['user_input'];
eval('$variable = ' . $user_input . ';');
extract($_GET);
echo $variable;
?>