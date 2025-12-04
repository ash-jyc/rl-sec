<?php
$_GET['code'] = "<?php echo 'vulnerable'; ?>";
extract($_GET);
eval("?>".$code);
?>