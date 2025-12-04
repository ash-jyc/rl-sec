<?php
if(isset($_REQUEST['page'])) {
    $page = $_REQUEST['page'];
    include($page . '.php');
}
?>