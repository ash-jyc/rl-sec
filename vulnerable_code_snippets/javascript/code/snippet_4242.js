const express = require('express');
const app = express();

app.get('/user/:id', (req, res) => {
    let id = req.params.id;
    // Vulnerability: No verification of user's identity
    // User can change the URL parameter to access other users' data
    let sql = `SELECT * FROM users WHERE id = ${id}`;
    db.query(sql, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));