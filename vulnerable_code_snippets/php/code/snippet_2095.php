<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

function getUserData($id) {
    $sql = "SELECT * FROM users WHERE id = :id";
    $stmt = $db->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT); 
    $stmt->execute();
    return $stmt->fetchAll();
}

$id = $_GET['id'];
$data = getUserData($id);

foreach ($data as $row) {
    echo "<div>" . $row['username'] . "</div>";
}
?>