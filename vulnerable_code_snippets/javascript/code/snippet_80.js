function getUserInput(data){
    let div = document.createElement('div');
    div.innerHTML = data;
    document.body.appendChild(div);
}

let userData = prompt("Enter some text");
getUserInput(userData);