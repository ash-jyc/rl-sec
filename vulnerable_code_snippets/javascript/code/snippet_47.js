var express = require('express');
var app = express();
app.use(express.json());

app.post('/evaluate', function(req, res){
    var result = eval(req.body.expression);
    res.send("Result: " + result);
});

app.listen(3000, function(){
    console.log('App listening on port 3000');
});