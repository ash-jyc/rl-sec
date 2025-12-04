<?php
$_GET['user_input'] = $_POST['user_input'];
extract($_GET);
eval('echo $user_input;');
?>