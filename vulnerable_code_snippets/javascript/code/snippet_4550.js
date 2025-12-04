function createElement(tagName, attributes, content) {
    var element = document.createElement(tagName);
    for (var key in attributes) {
        if (attributes.hasOwnProperty(key)) {
            element.setAttribute(key, attributes[key]);
        }
    }
    element.textContent = content;
    return element;
}

function addComment() {
    var comment = document.getElementById('comment').value;
    var commentsSection = document.getElementById('comments');
    var newComment = createElement('p', {}, comment);
    commentsSection.appendChild(newComment);
}

document.getElementById('submit').addEventListener('click', addComment);