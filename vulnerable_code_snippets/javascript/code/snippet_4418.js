function User(name) {
    this.name = name;
}

User.prototype.getInfo = function() {
    return this.name;
}

var user1 = new User('John Doe');

// Attacker modifies the prototype of User
User.prototype.getInfo = function() {
    return 'Attacker has modified the prototype';
}

console.log(user1.getInfo()); // Outputs: Attacker has modified the prototype