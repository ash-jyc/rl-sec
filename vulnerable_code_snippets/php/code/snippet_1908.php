<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "SELECT * FROM users WHERE id = :id";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    $user = $stmt->fetch();
    echo '<pre>';
    print_r($user);
    echo '</pre>';
}
?>