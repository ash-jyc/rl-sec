function generateRandomNumber() {
    var seed = Math.random();
    var randomNumber = Math.floor(seed * 100);
    return randomNumber;
}

console.log(generateRandomNumber());