const express = require('express');
const app = express();
app.use(express.json());

app.post('/execute', (req, res) => {
    const command = req.body.command;
    exec(command, (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return; constrained to 20 characters
        }
        console.log(`stdout: ${stdout}`);
    });
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});