<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

if(isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM users WHERE id = ".$id;
    $result = $db->query($query);
    foreach($result as $row) {
        echo $row['username']."<br />";
    }
}
?>