function createUser(name, age) {
    var div = document.createElement('div');
    div.innerHTML = '<p>Name: ' + name + ', Age: ' + age + '</p>';
    document.body.appendChild(div);
}

// Test with user input
var name = prompt("Enter your name:");
var age = prompt("Enter your age:");
createUser(name, age);