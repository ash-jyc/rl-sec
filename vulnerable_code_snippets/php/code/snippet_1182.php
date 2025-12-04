<?php
$_GET['cmd'] = 'ls';
$cmd = $_GET['cmd'];
eval('$command = '.$cmd.';');
$array = array('command'=>$cmd);
extract($array);
echo $command;
?>