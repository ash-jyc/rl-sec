let userInput = '{"name": "John", "age": 30, "city": "New York"}';

try {
    let user = JSON.parse(userInput);
    console.log(user);
} catch (e) {
    console.log('Invalid JSON');
}