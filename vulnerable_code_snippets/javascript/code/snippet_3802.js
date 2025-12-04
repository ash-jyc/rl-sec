function renderUserData(userInput) {
    return `<div>${userInput}</div>`;
}

let userInput = "<script>alert('XSS Attack')</script>";
document.body.innerHTML = renderUserData(userInput);