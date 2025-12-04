<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

$username = $_GET['username'];
$password = $_GET['password'];

$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

foreach ($db->query($sql) as $row) {
    print_r($row);
}
?>