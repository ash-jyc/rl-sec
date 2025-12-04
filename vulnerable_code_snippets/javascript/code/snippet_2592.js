const express = require('express');
const app = express();
app.use(express.json());

let accounts = [
    { id: 1, balance: 100 },
    { id: 2, balance: 200 }
];

app.get('/account/:id', (req, res) => {
    let accountId = req.params.id;
    let account = accounts[accountId - 1];
    if (!account) {
        res.status(404).send('Account not found');
    } else {
        res.json(account);
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));