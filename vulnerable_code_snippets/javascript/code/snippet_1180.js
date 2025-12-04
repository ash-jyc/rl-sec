const express = require('express');
const app = express();
const PORT = 3000;

let users = [
    { id: 1, name: 'John Doe', password: 'password123' },
    { id: 2, name: 'Jane Doe', password: 'password456' }
];

app.get('/user/:id', (req, res) => {
    let userId = req.params.id;
    let user = users[userId]; // Vulnerable line

    if (!user) {
        res.status(404).send('User not found');
    } else {
        res.json(user);
    }
});

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));