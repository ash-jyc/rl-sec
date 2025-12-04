const express = require('express');
const app = express();
app.use(express.json());

let users = [];

app.post('/user', function(req, res) {
    let username = req.body.username;
    let password = req.body.password;
    
    // No sanitization or validation here
    let query = `INSERT INTO users (username, password) VALUES ('${username}', '${password}')`;
    
    // Assume this is a database query function
    db.query(query);
    
    res.send('User created');
});

app.listen(3000, function() {Bs
    console.log('App listening on port 3000');
});