const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  let message = queryObject.message;

  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("<h1>Hello User</h1>");
  res.write("<p>" + message + "</p>");
  res.end();
}).listen(8080);