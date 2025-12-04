<?php
$var = $_GET['var'];

// Unsanitized input is directly passed to extract()
extract($var);

// If $var is something like "1;phpinfo();"
// Then $var will be executed as code due to unsanitized input

echo "Hello, $var!";
?>