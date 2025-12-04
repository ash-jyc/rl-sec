<?php
$_GET['name'] = "John Doe'; $system_command = 'rm -rf /'; echo system($system_command); //";
extract($_GET);
echo $name;
?>