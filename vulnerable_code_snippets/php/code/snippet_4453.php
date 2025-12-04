<?php
$user_input = $_GET['cmd'];

// Vulnerable Code
eval('echo '.$user_input.';');
?>