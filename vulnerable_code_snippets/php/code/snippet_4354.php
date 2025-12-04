<?php
$user_input = $_GET['something'];
$data = array("output" => $user_input);
extract($data);
eval("echo $output;");
?>