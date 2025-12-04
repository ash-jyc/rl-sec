const express = require('express');
const app = express();

app.get('/user/:id', (req, res) => {
    let id = req.params.id;
    // No authentication or authorization check here
    // Anyone can access other users' data
    db.query(`SELECT * FROM users WHERE id = ${id}`, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));