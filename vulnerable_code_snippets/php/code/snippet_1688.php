<?php
$user_input = $_GET['cmd'];
$command = "ls -l " . $user_input;
exec($command, $output);
foreach ($output as $line) {
    echo "<pre>$line</pre>";
}
?>