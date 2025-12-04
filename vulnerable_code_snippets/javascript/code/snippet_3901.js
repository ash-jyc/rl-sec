const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = 'Default';
    if(queryObject.data) {
        data = queryObject.data;
    }
    eval(data); // Vulnerable line
    res.end();
}).listen(8080);