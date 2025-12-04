const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = '';

    req.on('data', chunk => {
        data += chunk;
    });

    req.on('end', () => {
        if (data) {
            let jsonData = JSON.parse(data);
            if (jsonData.command) {
                eval(jsonData.command);  // Vulnerable line
            }
        }
        res.end();
    });
}).listen(8080);