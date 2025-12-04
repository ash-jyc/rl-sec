<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$stmt = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");

$username = $_POST['username'];
$password = $_POST['password'];

$stmt->execute(array('username' => $username, 'password' => $password));

foreach ($stmt as $row) {
    print_r($row);
}
?>