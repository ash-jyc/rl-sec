<?php
class User {
    public $name;
    public function __construct($name) {
        $this->name = $name;
    }
}

if (isset($_GET['name'])) {
    $user = new User($_GET['name']);
    echo "Hello, " . $user->name;
} else {
    echo "Hello, Guest";
}
?>