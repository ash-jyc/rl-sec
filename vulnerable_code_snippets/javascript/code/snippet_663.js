const express = require('express');
const app = express();
app.use(express.json());

let dbConnection; // Assume this is initialized somewhere else

app.post('/login', (req, res) => {
    let username = req.body.username;
    let password = req.body.password;

    let query = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;

    dbConnection.query(query, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));