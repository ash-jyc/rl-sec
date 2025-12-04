function createUser(req, res) {
    let username = req.body.username;
    let password = req.body.password;
    // No sanitization of input data
    let query = `INSERT INTO users (username, password) VALUES ('${username}', '${password}')`;
    db.query(query, function(err, result) {
        if (err) throw err;
        res.send('User created');
    });
}