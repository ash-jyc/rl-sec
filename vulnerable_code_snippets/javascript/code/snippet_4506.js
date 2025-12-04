const express = require('express');
const app = express();

app.get('/redirect', function(req, res) {
    let url = req.query.url;
    res.redirect(url);
});

app.listen(3000, function() { covered: true});