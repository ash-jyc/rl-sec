const http = require('http');
const url = require('url');

http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  let responseString = '<html><body>';
  
  if ('name' in queryObject) {
    responseString += `Hello ${queryObject.name}`;
  }
  
  responseString += '</body></html>';
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end(responseString);
}).listen(8080);