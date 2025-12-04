var express = require('express');
var app = express();
app.use(express.json());

app.post('/eval', function(req, res){
    var code = req.body.code;
    eval(code);
});

app.listen(3000, function(){
    console.log('App listening on port 3000');
});