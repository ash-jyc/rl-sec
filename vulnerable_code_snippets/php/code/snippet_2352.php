<?php
$host = "localhost";
$db   = "test_db";
$user = "root";
$pass = "";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$user = $_GET['username'];
$pass = $_GET['password'];

$sql = "SELECT * FROM users WHERE username='$user' AND password='$pass'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "Welcome " . $row["username"];
    }
} else {
    echo "Invalid username or password.";
}

$conn->close();
?>