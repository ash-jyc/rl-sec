<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$sql = "SELECT * FROM users WHERE id = " . $_GET['id'];
foreach ($db->query($sql) as $row) {
    print_r($row);
}
?>