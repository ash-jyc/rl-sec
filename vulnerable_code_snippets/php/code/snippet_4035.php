<?php
$user_input = $_GET['input'];
$data = array('output' => $user_input);
extract($data);
echo $output;
?>