<?php
$user_input = $_GET['unsafe_input'];
eval("echo $user_input;");
?>