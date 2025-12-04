const express = require('express');
const jwt = require('jsonwebtoken');
const app = express();

app.get('/login', async (req, res) => {
    const token = jwt.sign({ username: req.query.username }, 'secretkey');
    res.send(token);
});

app.get('/data', async (req, res) => {
    const token = req.headers['authorization'];
    if (!token) return res.status(401).send('Access Denied');
    try {
        const verified = jwt.verify(token, 'secretkey');
        res.send(verified);
    } catch (err) {
        res.status(400).send('Invalid Token');
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));