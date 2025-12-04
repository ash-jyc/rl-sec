<?php
$input = $_GET['input'];  // Assume this input could be manipulated by attacker

// Assume this input could be manipulated by attacker
$array = array(
    'var1' => 'value1',
    'var2' => $input,
);

extract($array);

echo $var1;
echo $var2;
?>