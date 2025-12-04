let userInput = '{"__proto__": {"isAdmin": true}}';
let parsedUser = JSON.parse(userInput);
console.log(parsedUser.isAdmin); // Expected output: true