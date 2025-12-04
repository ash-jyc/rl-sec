app.get('/user/:id', function(req, res) {
    var id = req.params.id;
    db.query('SELECT * FROM users WHERE id = ' + id, function(err, user) {
        if (err) throw err;
        res.send('<h1>User Details</h1><p>ID: ' + user.id + '</p><p>Name: ' + user.name + '</p>');
    });
});