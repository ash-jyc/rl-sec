const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let responseCode = 200;
    let responseMessage = 'Hello' + queryObject.name;

    if (responseMessage.includes('<script>')) {
        responseCode = 400;
        responseMessage = 'Invalid input';
    }

    res.writeHead(responseCode, {'Content-Type': 'text/html'});
    res.end(responseMessage);
}).listen(8080);