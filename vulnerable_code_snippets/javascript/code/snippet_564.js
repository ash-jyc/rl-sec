function generateHTML(userInput){
    return "<div>" + userInput + "</div>";
}

let userInput = "<script>alert('This is XSS attack')</script>";
document.write(generateHTML(userInput));