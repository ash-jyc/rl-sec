<?php
$user_input = $_GET['user_input'];

// Assume $user_input is "1; malicious_code();"
eval("extract(array('a' => '$user_input'));");

// Due to the vulnerability above, the malicious_code() will be executed.
// As a result, this line of code is a dead code.
echo "This line of code will never be executed.";
?>