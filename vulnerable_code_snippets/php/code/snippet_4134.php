<?php
$user_id = $_GET['id'];
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');
$query = "SELECT * FROM users WHERE id = " . $user_id;
$result = $db->query($query);
foreach ($result as $row) {
    echo $row['username'] . "<br />";
}
?>