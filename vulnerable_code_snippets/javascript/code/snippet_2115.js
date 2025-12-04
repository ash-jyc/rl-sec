const express = require('express');
const app = express();
app.use(express.json());

let users = [{id: 1, name: 'John'}, {id: 2, name: 'Jane'}];

app.get('/users/:id', (req, res) => {
    let userId = req.params.id;
    let user = users.find(user => user.id == userId);
    if(user){
        res.send(user);
    }else{
        res.status(404).send('User not found');
    }
});

app.listen(3000, () => console.log('Server running on port 3000'));