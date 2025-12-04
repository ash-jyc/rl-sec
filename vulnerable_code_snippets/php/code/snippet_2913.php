<?php
$mysqli = new mysqli('localhost', 'user', 'password', 'database');

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
        . $mysqli->connect_error);
}

$user = $_GET['username'];
$pass = $_GET['password'];

$query = "SELECT * FROM users WHERE username='$user' AND password='$pass'";

if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        echo $row['username'] . ' ' . $row['password'];
    }
    $result->free();
}

$mysqli->close();
?>