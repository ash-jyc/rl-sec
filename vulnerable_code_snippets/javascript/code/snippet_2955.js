// Define a function named 'createUser' which takes 3 parameters: 'name', 'age', 'address'.
function createUser(name, age, address) {
    // Create an object 'user' with properties 'name', 'age', 'address'.
    var user = {
        name: name,
        age: age,
        address: address
    };
    // Return the 'user' object.
    return user;
}

// Call the 'createUser' function with more arguments than it can handle.
var user = createUser('John Doe', 25, '123 Main St', 'Extra Parameter');

// Log the 'user' object to the console.
console.log(user);