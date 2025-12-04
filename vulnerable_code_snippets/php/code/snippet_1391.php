<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $stmt = $db->prepare("SELECT * FROM users WHERE id = :id");
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    $user = $stmt->fetch();
    echo "User's name is: " . $user['name'];
}
?>