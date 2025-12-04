var auth = false;
var user = {username: "admin", password: "password"};

function authenticate(username, password) {
    var start = Date.now();
    if (username === user.username && password === user.password) {
        auth = true;
    }
    var end = Date.now();
    console.log("Execution time: " + (end - start));
}

authenticate("admin", "password");