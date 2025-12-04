const express = require('express');
const app = express();
const yaml = require('js-yaml');

app.use(express.json());

app.post('/deserialize', (req, res) => {
    let userData = req.body;
    let userObject = yaml.load(userData);
    res.send(userObject);
});

app.listen(3000, () => console.log('Server running on port 3000'));