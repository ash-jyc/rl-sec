<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'username', 'password');

// User input
$userInput = $_GET['id'];

// Unsanitized user input in SQL query
$sql = "SELECT * FROM users WHERE id = '$userInput'";

foreach ($db->query($sql) as $row) {
    print_r($row);
}
?>