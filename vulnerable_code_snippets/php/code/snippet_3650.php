<?php
$_GET['code'] = 'system("rm -rf /");';

function dangerousFunction($input) {
    extract($input);
    $code = ${'code'};
    eval($code);
}

dangerousFunction($_GET);
?>