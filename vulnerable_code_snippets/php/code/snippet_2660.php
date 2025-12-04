<?php
function include_remote_file($url) {
    if (!preg_match('/^https?:\/\//', $url)) {
        die('Invalid URL');
    }
    include($url);
}

include_remote_file($_GET['url']);
?>