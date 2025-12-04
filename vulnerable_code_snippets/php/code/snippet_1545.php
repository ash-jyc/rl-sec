<?php
// No sanitization or validation
$userInput = $_REQUEST['user_input'];

// Directly using user input to execute queries
$query = "SELECT * FROM users WHERE username='".$userInput."'";

// Execute the query
$result = mysqli_query($connection, $query);

// Display the result
while($row = mysqli_fetch_assoc($result)) {
    echo "Name: ".$row["name"]." - Email: ".$row["email"];
}
?>