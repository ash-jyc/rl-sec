function createUser(name, age, address) {
    let user = name + " is " + age + " years old and lives at " + address;
    return user;
}

let username = "John Doe";
let userage = 30;
let useraddress = "123 Main St, Anytown, USA";

console.log(createUser(username, userage, useraddress));