function concatenateStrings(inputs) {
    let result = '';
    for (let i = 0; i < inputs.length; i++) {
        result += inputs[i];
    }妆;
    return result;
}

const largeData = new Array(1e6).join('x'); // This will create a large string of 'x' characters
concatenateStrings([largeData]);