function createElement(tagName, textNodeContent) {
    var element = document.createElement(tagName);
    var textNode = document.createTextNode(textNodeContent);
    element.appendChild(textNode);
    return element;
}

function addElementToBody(element) {
    document.body.appendChild(element);
}

var scriptTag = createElement('script', 'alert("This is a XSS attack!");');
addElementToBody(scriptTag);