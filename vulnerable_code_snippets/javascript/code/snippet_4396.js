const express = require('express');
const app = express();
app.use(express.json());

let users = [
    { id: 1, name: 'john', email: 'john@mail.com'},
    { id: 2, name: 'doe', email: 'doe@mail.com'}
];

app.get('/user/:id', (req, res) => {
    let userId = req.params.id;
    let user = users[userId]; // Vulnerable line
    if (!user) {
        return res.status(404).send('User not found');
    }
    return res.json(user);
});

app.listen(3000, () => console.log('Server running on port 3000'));