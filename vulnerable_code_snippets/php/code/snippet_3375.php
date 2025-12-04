<?php
$user_input = $_GET['id'];

if(is_numeric($user_input)) {
    $safe_input = (int)$user_input;
} else {
    die('Invalid input');
}

// Vulnerable point: Unsanitized user input is directly used in SQL query
$query = "SELECT * FROM users WHERE id=$safe_input";

// Execute the query
$result = mysqli_query($connection, $query);

while($row = mysqli_fetch_assoc($result)) {
    echo $row['username'] . ", " . $row['email'] . "<br>";
}

mysqli_close($connection);
?>