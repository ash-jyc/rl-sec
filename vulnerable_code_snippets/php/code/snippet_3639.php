<?php
function validateInput($input){
    // No sanitization or escaping
    return $input;
}

if(isset($_GET['user_input'])){
    $user_input = validateInput($_GET['user_input']);
    echo "Hello, " . $user_input;
}
?>