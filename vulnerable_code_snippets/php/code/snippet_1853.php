<?php
$input = $_GET['user_input'];
$array = array('dangerous_variable' => $input);
extract($array);
echo $dangerous_variable;
?>