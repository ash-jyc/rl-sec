// This is a simple express server setup
var express = require('express');
var app = express();
app.use(express.urlencoded());

app.get('/', function(req, res){
    var user_input = req.query.user_input;
    res.send(`<h1>Hello ${user_input}</h1>`);
});

app.listen(3000, function(){
    console.log('The application is listening on port 3000');
});