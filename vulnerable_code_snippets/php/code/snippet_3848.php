<?php
$_GET['name'] = 'John Doe';
$_GET['age'] = 30;

function showInfo($name, $age) {
    echo "Name: $name, Age: $age";
}

// Vulnerable Code
extract($_GET);
showInfo($name, $age);
?>