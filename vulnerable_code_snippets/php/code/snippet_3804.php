<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

// User input
$user_input = $_GET['id'];

// Vulnerable SQL query
$sql = "SELECT * FROM users WHERE id = {$user_input}";

// Execute the query
$result = $db->query($sql);

// Display the result
foreach ($result as $row) {
    echo $row['username'] . "<br />";
}
?>