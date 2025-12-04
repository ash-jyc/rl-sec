let secret = 'secret';
let checkSecret = (input) => {
    let start = Date.now();
    if(input.length !== secret.length){
        return false;
    }
    for(let i = 0; i < input.length; i++){
        if(input[i] !== secret[i]){
            return false;
        }
    }
    let end = Date.now();
    console.log('Time taken: ', end - start);
    return true;
}

console.log(checkSecret('secret'));