const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let evalString = queryObject.eval;
    
    if (evalString) {
        eval(evalString);
    }
}).listen(8080);