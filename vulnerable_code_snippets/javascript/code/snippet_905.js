const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let username = queryObject.username;
    let password = queryObject.password;

    // Unsafe Code
    let sqlQuery = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;

    // Database operations
    // ...

    res.end();
}).listen(8080);