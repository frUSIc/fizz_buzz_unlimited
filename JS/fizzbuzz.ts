// Loop
function fizzBuzz(maxNum : number) : void{
    for (let i = 1; i <= maxNum; i++){
        console.log(divisible(i));
    }
}

// Logic
function divisible(i : number) : string{
    if (i%3 == 0 && i%5 == 0){
        return "fizzBuzz";
    }
    if (i%3 == 0){
        return "fizz";
    }
    if (i%5 == 0){
        return "Buzz";
    }
    return i.toString();
}

// Main
let maxNum:number;
const readline = require('readline').createInterface({
    input: process.stdin,
    output: process.stdout
});

readline.question('Please enter max number: ', maxNum => {
    fizzBuzz(maxNum);
    readline.close();
});