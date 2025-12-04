<?php
$_GET['user_input'] = '; echo "Hacked!";';
$_GET['user_input2'] = 'username';

// User input is directly used as variable name without sanitization
extract($_GET);

echo $username;
?>