const express = require('express');
const app = express();
app.use(express.json());

let users = [
    { id: 1, name: 'John', age: 30 },
    { id: 2, name: 'Jane', age: 25 }
];

app.get('/users/:id', (req, res) => {
    let user = users[req.params.id]; //This line is vulnerable to IDOR
    if (!user) {
        res.status(404).send('User not found');
    } else {
        res.json(user);
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));