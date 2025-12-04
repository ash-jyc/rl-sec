<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

function getUserInfo($username) {
    $sql = "SELECT * FROM users WHERE username = '".$username."'";
    return $db->query($sql);
}

if (isset($_GET['username'])) {
    $userInfo = getUserInfo($_GET['username']);
    foreach ($userInfo as $row) {
        echo $row['username'].' '.$row['password'];
    }
}
?>