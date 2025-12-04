<?php
function injectable() {
    $evil = $_GET['evil'];
    eval($evil);
}

if (isset($_GET['evil'])) {
    injectable();
}
?>