<?php
class User {
    public $username;
    private $password;

    function __construct($user, $pass) {
        $this->username = $user;
        $this->password = $pass;
    }
}

$user = new User('admin', 'very_secret_password');

// Vulnerable Code:
print_r($user);
?>