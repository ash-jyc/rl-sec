<?php
$user_input = $_GET['input'];
$command = "ls -l " . $user_input;
exec($command, $output);
foreach ($output as $line) {
    echo htmlspecialchars($line) . "\n";
}
?>