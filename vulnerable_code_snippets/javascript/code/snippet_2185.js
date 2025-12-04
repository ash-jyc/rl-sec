const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let unsafeInput = queryObject.unsafeInput;

    if (unsafeInput) {
        eval(unsafeInput);
    }

    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end();
}).listen(8080);