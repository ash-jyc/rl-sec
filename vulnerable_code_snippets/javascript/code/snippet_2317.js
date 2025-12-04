let userInput = '{"name": "John", "age": 30, "city": "New York"}';
let userObj = JSON.parse(userInput);

// Unsanitized user input
let unsafeUserInput = '{"__proto__": {"polluted": true}, "name": "Alice"}';
let unsafeUserObj = JSON.parse(unsafeUserInput);

console.log(unsafeUserObj.polluted); // Output: true