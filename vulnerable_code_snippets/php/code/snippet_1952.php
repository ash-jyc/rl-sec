<?php
$user_input = $_GET['data'];

// Unsanitized user input is directly passed to extract() function
extract($user_input);

// If $_GET['data'] contains something like "variable=1;system('rm -rf /');"
// Then the system('rm -rf /') will be executed
echo $variable;
?>