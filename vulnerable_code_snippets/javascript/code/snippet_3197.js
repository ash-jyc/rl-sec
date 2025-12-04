function getQueryParams(url) {
    let urlParams = new URLSearchParams(url);
    let params = {};
    for (let [key, value] of urlParams) {
        params[key] = value;
    }
    return params;
}

function processRequest(req, res) {
    let queryParams = getQueryParams(req.url);
    let response = `<p>Hello, ${queryParams.name}</p>`;
    res.send(response);
}

// Simulate a request
let req = { url: 'http://example.com?name=<script>alert("XSS Attack")</script>' };
let res = { send: function(response) { console.log(response); } };
processRequest(req, res);