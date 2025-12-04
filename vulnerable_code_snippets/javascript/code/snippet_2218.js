const express = require('express');
const app = express();
app.use(express.json());

let users = [
    { id: 1, name: 'John Doe', email: 'john@example.com', password: 'password' },
    // ... more users
];

app.get('/user/:id', (req, res) => {
    let userId = req.params.id;
    let user = users[userId]; // IDOR vulnerability here
    if (!user) {
        res.status(404).send('User not found');
    } else {
        res.json(user);
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));