const express = require('express');
const app = express();
app.use(express.json());

app.post('/run-command', (req, res) => {
    const command = req.body.command;
    exec(command, (error, stdout, stderr) => {
        if (error) {
            res.send(error);
            return;
        }
        res.send(stdout);
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));