function User(name, age) {
    this.name = name;
    this.age = age;
}

User.prototype.greet = function() {
    return "Hello, my name is " + this.name + " and I am " + this.age + " years old.";
}

const userData = JSON.parse('{"__proto__": {"pollute": "This is a malicious payload"}, "name": "John Doe", "age": 30}');

const user = Object.create(User.prototype);
Object.assign(user, userData);

console.log(user.greet());