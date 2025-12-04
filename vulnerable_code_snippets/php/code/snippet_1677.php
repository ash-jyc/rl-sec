<?php
$conn = new mysqli('localhost', 'username', 'password', 'database');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id = $_GET['id'];
$sql = "SELECT * FROM users WHERE id=" . $id;
$result = $conn->query($sql);

while($row = $result->fetch_assoc()) {
    echo "Name: " . $row["name"] . ", Email: " . $row["email"] . "<br>";
}

$conn->close();
?>