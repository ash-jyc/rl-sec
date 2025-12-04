<?php
$mysqli = new mysqli('localhost', 'user', 'password', 'database');

if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
        . $mysqli->connect_error);
}

$query = "SELECT * FROM users WHERE username = '" . $_GET['username'] . "' AND password = '" . $_GET['password'] . "'";

if (!$result = $mysqli->query($query)) {
    echo "Error executing query: (" . $mysqli->errno . ") " . $mysqli->error;
}

while ($row = $result->fetch_assoc()) {
    echo $row['username'] . ' logged in successfully.';
}

$mysqli->close();
?>