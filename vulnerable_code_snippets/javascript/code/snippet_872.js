// This is a simple demonstration of how JSON.parse can lead to Prototype Pollution

let userInput = '{"__proto__": {"polluted": "Hacked!"}}';
let parsed = JSON.parse(userInput);

console.log(parsed.polluted); // Outputs: Hacked