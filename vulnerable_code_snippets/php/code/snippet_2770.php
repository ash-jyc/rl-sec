<?php
class EvilClass {
    private $command;

    public function __construct($cmd) {
        $this->command = $cmd;
    }

    public function __toString() {
        return $this->command;
    }
}

$_POST['user_input'] = 'system';
$_POST['data'] = serialize(new EvilClass('cat /etc/passwd'));

extract($_POST);

echo $user_input;