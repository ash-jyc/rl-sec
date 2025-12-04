<?php
$mysqli = new mysqli('localhost', 'root', '', 'test');

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
        . $mysqli->connect_error);
}

$id = $_GET['id'];
$query = "SELECT * FROM users WHERE id = $id";

if ($result = $mysqli->query($query)) {
    while ($row = $result->fetch_assoc()) {
        echo $row['username'] . ' ' . $row['email'];
    }
    $result->free();
}

$mysqli->close();
?>