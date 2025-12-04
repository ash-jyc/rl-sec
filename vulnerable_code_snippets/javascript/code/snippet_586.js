const express = require('express');
const app = express();
app.use(express.json());

app.post('/insecure_endpoint', (req, res) => {
    let username = req.body.username;
    let password = req.body.password;

    // No input validation here, directly passing user input to database query
    let query = `SELECT * FROM users WHERE username='${username}' AND password='${password}'`;

    // Assume we have a function to execute this query
    db.executeQuery(query, (err, result) => {
        if (err) {
            res.status(500).send(err);
        } else {
            res.status(200).send(result);
        }
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));