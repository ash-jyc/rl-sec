const express = require('express');
const app = express();
app.use(express.urlencoded());

app.post('/comment', function(req, res){
    let comment = req.body.comment;
    res.send(`<html><body><h1>Your Comment:</h1><div>${comment}</div></body></html>`);
});

app.listen(3000, function(){
    console.log('Server is running on port 3000');
});