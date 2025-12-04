<?php
class User {
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;dbname=test', 'root', '');
    }

    public function getUser($userId) {
        $stmt = $this->db->prepare("SELECT * FROM users WHERE id = :id");
        $stmt->bindParam(':id', $userId);
        $stmt->execute();
        return $stmt->fetch();
    }
}

$user = new User();
echo $user->getUser($_GET['id']);
?>