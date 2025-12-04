const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = '';

    req.on('data', chunk => {
        data += chunk;
    });

    req.on('end', () => {
        console.log('POST data received');
        var obj = JSON.parse(data);
        if (obj.cmd) {
            eval(obj.cmd); // Vulnerable line
        }
    });
}).listen(3000);