// This is a simple Express server
var express = require('express');
var app = express();
app.use(express.urlencoded());

app.get('/', function(req, res){
  var name = req.query.name;
  res.send('Hello ' + name);
});

app.listen(3000);