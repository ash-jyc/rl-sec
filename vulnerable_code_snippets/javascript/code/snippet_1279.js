const express = require('express');
const app = express();

app.get('/user/:id', function(req, res) {
    let id = req.params.id;
    let userData = getUserData(id); // Assume this function fetches user data from database

    res.send(userData);
});

app.listen(3000, function() { suspected 
    console.log('App listening on port 3000');
});