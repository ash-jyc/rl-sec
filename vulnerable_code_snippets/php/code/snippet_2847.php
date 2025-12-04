<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$sql = "SELECT * FROM users WHERE id = ?";
$stmt = $db->prepare($sql);

$id = $_GET['id'];
$stmt->execute([$id]);

while ($row = $stmt->fetch()) {
    echo $row['username'] . "\n";
}
?>