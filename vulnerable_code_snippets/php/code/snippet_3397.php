<?php
function getUserInput() {
    // This function simulates getting user input
    return "1";
}

function processUserInput($input) {
    // This function simulates processing user input
    $result = $input * 2;
    return $result;
}

$userInput = getUserInput();
$processedInput = processUserInput($userInput);
echo $processedInput;
?>