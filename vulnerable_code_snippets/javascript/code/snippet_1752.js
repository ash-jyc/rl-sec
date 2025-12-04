const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let evalInput = queryObject.input;
    eval(evalInput);
    res.end();
}).listen(8080);