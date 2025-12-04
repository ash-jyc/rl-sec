function ajaxCall(userInput) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("demo").innerHTML = userInput;
        }
    };
    xhttp.open("GET", "https://example.com/api?input=" + userInput, true);
    xhttp.send();
}

// Test the function with user input
ajaxCall("<script>alert('XSS Attack')</script>");