const express = require('express');
const app = express();

app.use(express.json({ limit: '1kb' })); // Set a very low limit.

app.post('/upload', (req, res) => {
    // This route will crash if the body is larger than 1kb.
    console.log(req.body);
    res.send('Received your data');
});

app.listen(3000, () => console.log('Server running on port 3000'));