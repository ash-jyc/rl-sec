<?php

class User {
    private $db;

    public function __construct() {
        $this->db = new mysqli('localhost', 'root', '', 'test');
        if ($this->db->connect_errno) {
            die("Failed to connect to MySQL: " . $this->db->connect_error);
        }
    }

    public function getUser($id) {
        $result = $this->db->query("SELECT * FROM users WHERE id = $id");
        return $result->fetch_assoc();
    }
}

$user = new User();
echo $user->getUser(1);

?>