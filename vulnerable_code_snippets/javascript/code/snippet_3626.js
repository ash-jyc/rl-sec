const userInput = '{"__proto__": {"isAdmin": true}}';
const parsedUserInput = JSON.parse(userInput);
console.log(parsedUserInput);