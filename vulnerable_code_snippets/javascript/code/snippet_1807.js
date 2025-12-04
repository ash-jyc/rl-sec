const express = require('express');
const app = express();
app.use(express.urlencoded());

app.post('/comment', function(req, res){
    let comment = req.body.comment;
    res.send(`<p>Your comment: ${comment}</p>`);
});

app.listen(3000, function(){
    console.log('Server started on port 3000');
});