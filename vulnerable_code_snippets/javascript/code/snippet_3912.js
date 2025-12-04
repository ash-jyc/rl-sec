// Vulnerable Code
function executeAction(userInput) {
    if (typeof userInput === 'string') {
        console.log('Executing action:', userInput);
    } else {
        console.log('Invalid input');
    }
}

// Attacker's input
const attackerInput = {
    toString: function() {
        return 'maliciousAction';
    }
};

executeAction(attackerInput);