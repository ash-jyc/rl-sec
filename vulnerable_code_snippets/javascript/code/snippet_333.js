const express = require('express');
const app = express();
app.use(express.urlencoded({ extended: true }));

app.post('/comment', function(req, res) {
    let comment = req.body.comment;
    res.send('Your comment: ' + comment);
});

app.listen(3000, function() {overed
    console.log('App listening on port 3000');
});