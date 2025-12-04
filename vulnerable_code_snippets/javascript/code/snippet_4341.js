let userInput = '{"__proto__": {"pollute": "hacked"}}';
let parsedJson = JSON.parse(userInput);
console.log(parsedJson.pollute); // Outputs: hacked