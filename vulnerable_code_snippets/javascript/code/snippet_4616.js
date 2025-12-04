const http = require('http');
const url = require('url');

const server = http.createServer((req, res) => {
  const queryObject = url.parse(req.url, true).query;
  let userInput = queryObject.userinput;
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("<h1>Hello, " + userInput + "</h1>");
  res.end();
});

server.listen(8080, () => {
  console.log('Server running at http://localhost:8080/');
});