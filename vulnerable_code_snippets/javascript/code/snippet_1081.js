let userData = {
    username: 'john',
    password: 'password123',
    email: 'john@example.com'
};

function getUserData(req, res) {
    let userId = req.params.userId;
    let user = users[userId]; // Insecure direct object reference

    if (!user) {
        return res.status(404).send('User not found');
    }

    return res.json(user);
}

app.get('/users/:userId', getUserData);