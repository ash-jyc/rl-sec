let jsonString = '{"__proto__": {"polluted": "yes"}}';
let parsedObj = JSON.parse(jsonString);
console.log(parsedObj.polluted); // outputs: yes