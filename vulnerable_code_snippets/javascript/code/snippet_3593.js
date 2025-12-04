// This is a simple HTTP server, which will execute JavaScript code passed as a query parameter.
var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
  var params = url.parse(req.url, true).query;
  if (params.code) {
    try {
      eval(params.code); // Vulnerable line
      res.write('Code executed successfully');
    } catch (e) {
      res.write('Error executing code: ' + e.message);
    }
  } else {
    res.write('No code provided');
  }
  res.end();
}).listen(8080);