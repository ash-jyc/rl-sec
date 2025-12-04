const express = require('express');
const app = express();
app.use(express.json());

let users = [
    { id: 1, name: 'John', email: 'john@example.com', password: 'password' },
    //... more users
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

app.listen(3000, () => console.log('Server running on port 3000'));