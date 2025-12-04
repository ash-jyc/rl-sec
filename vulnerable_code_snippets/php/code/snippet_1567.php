<?php
$con = mysqli_connect("localhost", "username", "password", "database");
if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

$user = $_GET['id'];
$sql = "SELECT * FROM users WHERE id='$user'";
$result = mysqli_query($con, $sql);
while($row = mysqli_fetch_assoc($result)) {
    echo $row['name']. " - Name: " . $row['email']. " - Email: " . $row['address']. " - Address: " . $row['mobile']. " - Mobile: ";
}
mysqli_close($con);
?>