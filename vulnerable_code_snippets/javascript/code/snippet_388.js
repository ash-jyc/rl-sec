const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  const searchQuery = queryObject.search;

  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write(`<h1>Search Results for ${searchQuery}</h1>`);
  res.end();
}).listen(8080);