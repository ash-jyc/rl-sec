const express = require('express');
const app = express();
const yaml = require('js-yaml');

app.use(express.json());

app.post('/deserialize', (req, res) => {
    let userData = req.body;
    let deserializedUserData = yaml.load(userData);
    // ...
});

app.listen(3000, () => console.log('Server running on port 3000'));