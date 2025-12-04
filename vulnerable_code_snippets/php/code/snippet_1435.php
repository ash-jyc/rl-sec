<?php
function include_file($file) {
    include $file;
}

if (isset($_GET['file'])) {
    $file = $_GET['file'];
    include_file($file);
}
?>