function parseUserInput(input) {
    let parsed = JSON.parse(input);
    console.log(parsed);
}

let maliciousPayload = '{"__proto__": {"pollute": "hacked!"}}';
parseUserInput(maliciousPayload);

let testObject = new Object();
console.log(testObject.pollute);