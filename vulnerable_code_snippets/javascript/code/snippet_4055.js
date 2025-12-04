const express = require('express');
const app = express();
app.use(express.json());

let users = [];

app.post('/register', (req, res) => {
    let username = req.body.username;
    let password = req.body.password;
    
    // No sanitization or validation here
    let query = `INSERT INTO users (username, password) VALUES ('${username}', '${password}')`;
    
    // Database operation here...
});

app.listen(3000, () => console.log('Server running on port 3000'));