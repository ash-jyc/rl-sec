function User(name, age) {
    this.name = name;
    this.age = age;
}

User.prototype.sayHello = function() {
    console.log('Hello, ' + this.name);
}

function Admin(name, age, role) {
    this.name = name;
    this.age = age;
    this.role = role;
}

Admin.prototype = new User();

var admin = new Admin('John Doe', 30, 'admin');
admin.sayHello(); // Expected output: Hello, John Doe
                 // Actual output: TypeError: admin.sayHello is not a function