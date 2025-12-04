<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$username = $_REQUEST['username'];
$password = $_REQUEST['password'];

$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";

foreach ($db->query($sql) as $row) {
    print_r($row);
}
?>