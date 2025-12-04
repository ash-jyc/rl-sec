function generatePredictableRandomNumber(max) {
    var min = 0;
    var random = Math.random();
    return Math.floor(random * (max - min + 1)) + min;
}

console.log(generatePredictableRandomNumber(10));