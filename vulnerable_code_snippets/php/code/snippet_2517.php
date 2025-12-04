<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'username', 'password');

$username = $_GET['username'];
$password = $_GET['password'];

$stmt = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");
$stmt->execute(['username' => $username, 'password' => $password]);

$user = $stmt->fetch();

if($user){
    echo "Welcome user!";
} else {
    echo "Invalid credentials";
}
?>