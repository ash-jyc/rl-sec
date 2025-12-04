const express = require('express');
const app = express();
app.use(express.json());

// Vulnerable endpoint
app.get('/user/:id', (req, res) => {
    let id = req.params.id;
    let query = `SELECT * FROM users WHERE id = ${id}`;
    // Assume db is a connected database object
    db.query(query, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));