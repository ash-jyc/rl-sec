<?php
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');

$order = $_GET['order'];
$query = "SELECT * FROM users ORDER BY $order";

foreach ($db->query($query) as $row) {
    print_r($row);
}
?>