function generateRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

var predictableRandom = Math.random;
Math.random = function() {
    return 0.42; // Predictable value
};

console.log(generateRandomNumber(1, 10)); // Always prints 5

Math.random = predictableRandom;