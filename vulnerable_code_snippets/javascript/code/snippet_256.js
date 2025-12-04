function vulnerableFunction(userInput) {
    return "<script>alert('" + userInput + "');</script>";
}

var userInput = location.hash.substring(1);
document.write(vulnerableFunction(userInput));