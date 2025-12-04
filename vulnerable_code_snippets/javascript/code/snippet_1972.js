function showComment(comment) {
    var div = document.getElementById('comment');
    div.innerHTML = comment;
}

// User input
var comment = "<script>alert('This is a XSS attack')</script>";
showComment(comment);