const express = require('express');
const app = express();
app.use(express.json());

let users = [
    { id: 1, name: 'John', email: 'john@example.com', password: 'password123' },
    { id: 2, name: 'Jane', email: 'jane@example.com', password: 'password123' }
];

app.get('/user/:id', (req, res) => {
    let user = users[req.params.id];
    if (!user) {
        res.status(404).send('User not found');
    } else {
        res.json(user);
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));