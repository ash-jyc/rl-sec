<?php
$dsn = 'mysql:host=localhost;dbname=test';
$username = 'root';
$password = '';

try {
    $pdo = new PDO($dsn, $username, $password);
} catch (PDOException $e) {
    die('Connection failed: ' . $e->getMessage());
}

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM users WHERE id = " . $id;
    $stmt = $pdo->query($sql);
    $user = $stmt->fetch();
    echo 'Hello, ' . $user['username'];
}
?>