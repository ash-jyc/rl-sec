<?php
// This is a very simple PHP script that echoes back the data from the $_GET['data'] 
// variable without any sanitization or validation.
if(isset($_GET['data'])) {
    echo $_GET['data'];
}
?>