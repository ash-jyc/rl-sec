const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let userInput = queryObject.userInput;
    eval(userInput);
    res.end();
}).listen(3000);