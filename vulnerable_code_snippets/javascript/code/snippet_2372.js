const express = require('express');
const app = express();
app.use(express.urlencoded());

app.get('/', (req, res) => {
    let comment = req.query.comment;
    res.send(`<html><body>${comment}</body></html>`);
});

app.listen(3000, () => console.log('Server running on port 3000'));