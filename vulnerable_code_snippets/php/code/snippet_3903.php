<?php
class VulnerableClass {
    public function __construct($data) {
        extract($data);
        $this->test = $test;
    }

    public function displayTest() {
        echo $this->test;
    }
}

if (isset($_GET['test'])) {
    $vulnerable = new VulnerableClass($_GET);
    $vulnerable->displayTest();
}
?>