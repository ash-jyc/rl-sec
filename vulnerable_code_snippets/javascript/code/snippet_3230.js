let User = function(name, password){
    this.name = name;
    this.password = password;
}

User.prototype.getPrivateInfo = function(){
    return {
        name: this.name,
        password: this.password
    }
}

let admin = new User('admin', 'very_secure_password');

let hacker = {
    name: 'hacker',
    getPrivateInfo: admin.getPrivateInfo
}

console.log(hacker.getPrivateInfo());