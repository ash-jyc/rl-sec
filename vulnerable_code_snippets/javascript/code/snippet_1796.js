function getQueryParam(name) {
    var urlParams = new URLSearchParams(window.location.search);
    return urlParams.get(name);
}

function displayMessage() {
    var message = getQueryParam('message');
    var div = document.createElement('div');
    div.innerHTML = message;
    document.body.appendChild(div);
}

displayMessage();