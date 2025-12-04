function createElement(input){
    var div = document.createElement('div');
    div.innerHTML = input;
    document.body.appendChild(div);
}

// User input
var userInput = "<script>alert('Buffer Overflow Vulnerability')</script>";
createElement(userInput);