const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = "";

    req.on('data', chunk => {
        data += chunk;
    });

    req.on('end', () => {
        let jsonData = JSON.parse(data);
        let userInput = jsonData.userInput;

        // Vulnerable code: using eval() function without proper validation
        eval(userInput);

        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end();
    });
}).listen(8080);