<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

// Assume this is from user input
$input = $_GET['id'];

$query = "SELECT * FROM users WHERE id = :id";
$stmt = $db->prepare($query);
$stmt->execute(['id' => $input]);

$user = $stmt->fetch();

echo "Hello, " . $user['username'];
?>