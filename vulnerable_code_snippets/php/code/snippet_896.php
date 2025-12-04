<?php
// Assume we have a function called 'redirect' which takes a URL as an argument
function redirect($url) {
    header('Location: ' . $url);
}

// We have a form where users can input their destination URL
if (isset($_POST['destination'])) {
    $destination = $_POST['destination'];
    // We just pass the user's input directly into our redirect function without any validation
    redirect($destination);
}
?>