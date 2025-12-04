<?php
$_GET['name'] = "John Doe'; $password = '123456'; echo $password; echo '"; //";
extract($_GET);
echo $name;
?>