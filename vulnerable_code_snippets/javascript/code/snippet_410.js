var express = require('express');
var app = express();
app.use(express.json());

app.post('/eval', function(req, res){
    var data = req.body.data;
    eval(data);
});

app.listen(3000, function(){
    console.log('App listening on port 3000');
});