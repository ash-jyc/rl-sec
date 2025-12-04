function login(username, password){
    let users = {'admin': 'password', 'user': '123456'};
    let userPassword = users[username];
    
    if(userPassword == password){
        alert('Login Successful');
    }else{
        alert('Login Failed');
    }
}

login('admin', ['password']);