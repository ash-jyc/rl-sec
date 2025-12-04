<?php
$conn = mysqli_connect("localhost", "username", "password", "database");

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM users WHERE id='$id'";
    $result = mysqli_query($conn, $query);
    while($row = mysqli_fetch_assoc($result)) {
        echo $row['username'] . "<br>";
    }
}
?>