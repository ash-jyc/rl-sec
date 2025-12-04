<?php
session_start();
$username = $_POST['username'];
$password = $_POST['password'];

// Assume we have a database connection
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

$stmt = $db->prepare("SELECT * FROM users WHERE username = ?");
$stmt->execute([$username]);
$user = $stmt->fetch();

if($user && $user['password'] === $password){
    $_SESSION['authenticated'] = true;
    $_SESSION['username'] = $username;
    header('Location: dashboard.php');
}else{
    header('Location: login.php');
}
?>