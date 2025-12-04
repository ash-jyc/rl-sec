let userInput = '{"__proto__": {"pollute": "bad"}}';
let parsedUserInput = JSON.parse(userInput);
console.log(parsedUserInput.pollute);