<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$stmt = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");

$username = $_GET['username'];
$password = $_GET['password'];

$stmt->execute(array('username' => $username, 'password' => $password));

foreach ($stmt as $row) {
    print_r($row);
}
?>