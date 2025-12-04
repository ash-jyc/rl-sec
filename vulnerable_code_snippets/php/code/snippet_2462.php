<?php
$host = "localhost";
$dbname = "mydatabase";
$username = "root";
$password = "";

$conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);

$username = $_GET['username'];
$password = $_GET['password'];

$sql = "SELECT * FROM users WHERE username='$username' AND password='$password'";

foreach ($conn->query($sql) as $row) {
    print_r($row);
}
?>