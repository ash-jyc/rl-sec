<?php
$userInput = $_GET['input'];

// Vulnerable code
eval('$result = '.$userInput.';');

// Secure code
$allowedVariables = ['userInput'];
$result = null;
extract($_GET, EXTR_IF_EXISTS | EXTR_OVERWRITE);
if (!in_array($userInput, $allowedVariables)) {
    $result = $userInput;
}