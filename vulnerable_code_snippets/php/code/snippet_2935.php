<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$search = $_GET['search'];
$stmt = $db->query("SELECT * FROM users WHERE name LIKE '%$search%'");

while ($row = $stmt->fetch()) {
    echo $row['name'] . "\n";
}
?>