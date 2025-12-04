<?php
    if($_SERVER['REQUEST_METHOD'] == 'POST') {
        $userInput = $_POST['userInput'];
        echo "User Input: " . $userInput;
    }
?>

<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
    <input type="text" name="userInput" />
    <input type="submit" value="Submit" />
</form>