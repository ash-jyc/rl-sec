<?php
$input = $_GET['user_input'];
eval("\$variable = \"$input\";");
extract($_GET);
echo $variable;
?>