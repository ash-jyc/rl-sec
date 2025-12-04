<?php
// Vulnerable Code
function set_content_type($type) {
    header('Content-Type: ' . $type);
}

if (isset($_GET['type'])) {
    set_content_type($_GET['type']);
}
?>