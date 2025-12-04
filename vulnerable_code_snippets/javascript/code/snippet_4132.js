const express = require('express');
const app = express();
app.use(express.json());

let query = '';

app.post('/sql', (req, res) => {
    let userInput = req.body.query;
    query = `SELECT * FROM users WHERE username='${userInput}'`;
    // This is where the vulnerability lies. User input is directly used in a SQL query without any sanitization.
    executeQuery(query);
});

function executeQuery(query) {
    // Assume this function executes the given SQL query
}

app.listen(3000, () => console.log('Server running on port 3000'));