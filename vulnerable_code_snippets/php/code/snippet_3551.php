<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM users WHERE id = :id";
    $stmt = $db->prepare($sql);
    $stmt->execute(['id' => $id]);
    $user = $stmt->fetch();
    echo $user['username'];
}
?>