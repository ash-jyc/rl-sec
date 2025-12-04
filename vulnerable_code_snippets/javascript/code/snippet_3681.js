let user = {username: 'admin', password: 'password'};

function login(username, password) {
    let isValid = false;
    if (username === user.username) {
        setTimeout(() => {
            if (password === user.password) {
                isValid = true;
            }
        }, 100);
    }
    return isValid;
}

console.log(login('admin', 'password'));