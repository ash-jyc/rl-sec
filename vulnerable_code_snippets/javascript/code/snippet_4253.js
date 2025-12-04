const express = require('express');
const app = express();
app.use(express.urlencoded());

app.get('/', (req, res) => {
    let name = req.query.name;
    res.send(`<h1>Hello ${name}</h1>`);
});

app.listen(3000, () => console.log('Server running on port 3000'));