function createElement(tag, text) {
    let element = document.createElement(tag);
    element.textContent = text;
    return element;
}

function appendToBody(element) {
    document.body.appendChild(element);
}

let userInput = "<script>alert('Malicious script')</script>";
let pElement = createElement("p", userInput);
appendToBody(pElement);