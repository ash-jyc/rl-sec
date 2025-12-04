<?php
session_start();
// Vulnerable code starts here
if(isset($_SESSION['username'])) {
    $logged_in = true;
}
else {
    // Unsafe code here
    $_SESSION['username'] = $_POST['username'];
}
// Vulnerable code ends here
?>