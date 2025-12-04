<?php
$user_input = $_GET['user_input'];

// Vulnerable code
eval('$myVariable = "' . $user_input . '";');

// Secure code
$allowed_variables = ['variable1', 'variable2', 'variable3'];
if(in_array($user_input, $allowed_variables)) {
    ${$user_input} = $user_input;
} else {
    echo "Invalid input!";
}
?>