//Create list of ints from 1 to 5, Haskell equivalent [1..5]
function arrFunc(a, b){
    let arr = [];
    for (let i = a; i<=b; i++) {
        arr.push(i);
    }
    return arr;    
}

function applicatorFunc(inpFunc, s, a, b){
    if(s=='s'){
        const arr = inpFunc(a, b);        
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum;
    }
    else{        
        const arr = inpFunc(a, b);
        let sum = arr.reduce((accumulator, currentValue) => accumulator + currentValue, 0);
        return sum/b;
    }
}

let x = applicatorFunc(arrFunc, 's', 1, 10);
console.log(x);

let y = applicatorFunc(arrFunc, 'a', 1, 10);
console.log(y);