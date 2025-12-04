function generateRandomNumber(upperLimit) {
    var date = new Date();
    return Math.round(date.getTime() % upperLimit);
}

let lotteryNumbers = [];
for(let i = 0; i < 6; i++) {
    lotteryNumbers.push(generateRandomNumber(59));
}

console.log("Your lottery numbers are: " + lotteryNumbers.join(", "));