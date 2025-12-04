<?php
// Simplified version of a login system
$user = $_POST['username'];
$pass = $_POST['password'];

if($user == 'admin' && $pass == 'admin') {
    // Successful login
    $redirectUrl = $_GET['redirect'];
    header('Location: '.$redirectUrl);
} else {
    // Failed login
    echo "Login failed.";
}
?>