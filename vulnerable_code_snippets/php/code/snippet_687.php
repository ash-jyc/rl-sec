<?php
$user_input = $_GET['user_input'];
eval('$user_input = "' . $user_input . '";');
echo $user_input;
?>