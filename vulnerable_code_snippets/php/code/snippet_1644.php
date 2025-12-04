<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$id = $_GET['id'];
$result = $db->query("SELECT * FROM users WHERE id = $id");

foreach($result as $row) {
    print_r($row);
}
?>