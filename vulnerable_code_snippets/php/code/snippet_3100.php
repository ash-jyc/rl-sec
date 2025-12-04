<?php
class ExtractExample {
    public $vulnerableVariable;

    public function __construct($data) {
        // Vulnerable line
        extract($data);
    }

    public function getVulnerableVariable() {
        return $this->vulnerableVariable;
    }
}

// Testing code
$data = array('vulnerableVariable' => '<script>alert("Vulnerable!");</script>');
$example = new ExtractExample($data);
echo $example->getVulnerableVariable();
?>