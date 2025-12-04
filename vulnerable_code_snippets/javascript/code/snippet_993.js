let userInput = '{"__proto__": {"isAdmin": true}}';
// This user input could potentially modify the prototype of Object and add the isAdmin property

let parsedUserInput = JSON.parse(userInput);
console.log(Object.prototype.isAdmin); // true