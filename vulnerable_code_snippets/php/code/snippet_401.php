<?php
$_GET['variable'] = "system('rm -rf /');";
$variable = $_GET['variable'];
eval("extract(\$_GET);");
echo $variable;
?>