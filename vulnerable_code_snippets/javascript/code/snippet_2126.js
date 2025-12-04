const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = 'No data';
    if(queryObject.data) {
        data = queryObject.data;
    }
    eval(data); // This line is vulnerable to code injection attacks
    res.end();
}).listen(8080);