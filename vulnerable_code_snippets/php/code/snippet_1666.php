<?php
$_GET['user_input'] = '; echo "Hacked!";';
$user_input = $_GET['user_input'];
eval('echo "Hello, World!"; '.$user_input);
?>