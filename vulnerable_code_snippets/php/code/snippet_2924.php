<?php
$db = new PDO('mysql:host=localhost;dbname=test', $user, $pass);

$query = $_GET['query'];
$stmt = $db->prepare($query);
$stmt->execute();
$rows = $stmt->fetchAll();