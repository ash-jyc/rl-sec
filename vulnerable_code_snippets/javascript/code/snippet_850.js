var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
  var queryObject = url.parse(req.url, true).query;
  var searchTerm = queryObject.search;
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("<h1>Search Results:</h1>");
  res.write("<p>" + searchTerm + "</p>");
  res.end();
}).listen(8080);