<?php
session_start();

if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true){
    // Some operations
} else {
    header('Location: login.php');
}

// Vulnerable code
if(isset($_GET['hijack'])){
    $_SESSION['loggedin'] = true;
}
?>