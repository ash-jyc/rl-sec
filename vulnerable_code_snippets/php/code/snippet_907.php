<?php
function processRequest($request) {
    // Unfiltered user input is being passed directly to extract()
    extract($request);

    // This line might allow for arbitrary code execution
    eval("echo $userInput;");
}

processRequest(array('userInput' => "phpinfo();"));
?>