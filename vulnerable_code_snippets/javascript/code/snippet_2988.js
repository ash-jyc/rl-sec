const express = require('express');
const app = express();
app.use(express.urlencoded());

app.get('/', (req, res) => {
    let username = req.query.username;
    res.send(`<h1>Welcome ${username}</h1>`);
});

app.listen(3000, () => console.log('Server running on port 3000'));