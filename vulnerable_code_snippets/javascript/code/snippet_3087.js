const express = require('express');
const app = express();
app.use(express.json());

let users = [{id: 1, name: 'John'}, {id: 2, name: 'Jane'}];

app.get('/users/:id', (req, res) => {
    let id = req.params.id;
    let query = `SELECT * FROM users WHERE id = ${id}`;
    // Assume db.query is a function that executes the SQL query
    db.query(query, (err, result) => {
        if (err) throw err;
        res.send(result);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));