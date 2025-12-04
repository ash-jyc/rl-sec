// Import required modules
const express = require('express');
const bodyParser = require('body-parser');

// Create Express server
const app = express();

// Use body parser middleware
app.use(bodyParser.urlencoded({ extended: false }));

// Define routes
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/index.html');
});

app.post('/comment', (req, res) => {
  const comment = req.body.comment;
  res.send(`Comment received: ${comment}`);
});

// Start server
app.listen(3000, () => console.log('Server started on port 3000'));