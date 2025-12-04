<?php
$conn = mysqli_connect("localhost", "username", "password", "database");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM users WHERE username='" . $_GET['username'] . "' AND password='" . $_GET['password'] . "'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "Login successful!";
} else {
    echo "Login failed.";
}

mysqli_close($conn);
?>