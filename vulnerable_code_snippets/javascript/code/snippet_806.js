let users = {
    '1': {name: 'John', role: 'admin'},
    '2': {name: 'Jane', role: 'user'}
};

function getUser(id) {
    return users[id];
}

let req = require('request');
req({uri: 'http://example.com/user?id=2'}, function(error, response, body) {
    let user = getUser(body);
    console.log(user);
});