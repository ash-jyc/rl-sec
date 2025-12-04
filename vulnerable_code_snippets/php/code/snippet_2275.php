<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$user_id = $_GET['id'];
$query = "SELECT * FROM users WHERE id = :id";
$stmt = $db->prepare($query);
$stmt->bindParam(':id', $user_id, PDO::PARAM_INT);
$stmt->execute();

while ($row = $stmt->fetch()) {
    echo $row['username'] . "\n";
}
?>