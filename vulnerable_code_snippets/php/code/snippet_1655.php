<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

// User input
$userInput = $_GET['id'];

// Unsanitized user input directly used in query
$sql = "SELECT * FROM users WHERE id = '$userInput'";

foreach ($db->query($sql) as $row) {
    print_r($row);
}
?>