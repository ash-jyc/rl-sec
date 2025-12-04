<?php
session_start();
$username = $_POST['username'];
$password = $_POST['password'];

// Assume we have a database connection
$query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
$result = mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0){
    $_SESSION['username'] = $username;
    header('Location: dashboard.php');
}else{
    echo 'Invalid login credentials';
}
?>