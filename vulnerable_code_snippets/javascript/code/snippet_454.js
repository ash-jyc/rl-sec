var payload = '{"__proto__": {"polluted": true}}';
var parsed = JSON.parse(payload);
console.log(Object.prototype.polluted); // Outputs: true