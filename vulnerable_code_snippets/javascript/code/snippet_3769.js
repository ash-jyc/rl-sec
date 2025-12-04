const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  let message = 'Hello, User';
  
  if (queryObject.name) {
    message = `Hello, ${queryObject.name}`;
  }
  
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(`<h1>${message}</h1>`);
}).listen(8080);