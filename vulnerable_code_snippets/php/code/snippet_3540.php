<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

$username = $_GET['username'];
$password = $_GET['password'];

$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

foreach ($db->query($query) as $row) {
    echo "Login successful!";
}
?>