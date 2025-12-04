const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  let responseText = `<p>Hello, ${queryObject.name}</p>`;
  
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(responseText);
}).listen(8080);