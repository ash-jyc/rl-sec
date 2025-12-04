<?php
// Simplified version of a file upload script
if(isset($_FILES['uploadedFile'])) {
    $fileName = $_FILES['uploadedFile']['name'];
    $tmpName = $_FILES['uploadedFile']['tmp_name'];
    move_uploaded_file($tmpName, "./uploads/". $fileName);
}
?>
<form method="post" enctype="multipart/form-data">
    <input type="file" name="uploadedFile">
    <input type="submit" value="Upload">
</form>