const data = `{"__proto__": {"polluted": "Yes, you got polluted!"}}`;
const parsed = JSON.parse(data);
console.log(Object.prototype.polluted);  // Yes, you got polluted