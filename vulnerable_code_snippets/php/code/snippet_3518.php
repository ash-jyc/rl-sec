<?php
$conn = new mysqli("localhost", "username", "password", "database");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$user = $_GET['user'];
$query = "SELECT * FROM Users WHERE username='$user'";
$result = $conn->query($query);

while($row = $result->fetch_assoc()) {
    echo "id: " . $row["id"]. " - Name: " . $row["name"]. "<br>";
}

$conn->close();
?>