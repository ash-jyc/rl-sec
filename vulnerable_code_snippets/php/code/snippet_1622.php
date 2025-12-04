<?php
function dangerousFunction($input) {
    extract($input);
    echo $name;
}

$userInput = array('name' => 'John Doe', 'role' => 'admin');
dangerousFunction($userInput);
?>