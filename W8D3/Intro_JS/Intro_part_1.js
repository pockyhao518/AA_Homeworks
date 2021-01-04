function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
//   in block in block
  
  function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
      const x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  // in block, out of block
  
  function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
      var x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  // SyntaxError
  
  function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    console.log(x);
  }
  // in block, out of block
  
  function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
      let x = 'in block';  
      console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
  }
  // SyntaxError

  function madLib(str1, str2, str3){
    return 'We shall '+str1.toUpperCase()+' the '+str2.toUpperCase() + ' ' + str3.toUpperCase()+'.'
  }

function isSubstring(searchString, subString){
    return searchString.include(subString)
}

function fizzBuzz(array) {
    let newArr = []
    array.forEach(el => {
        if (((el % 3 === 0) || (el % 5 === 0)) && ((el % 3 !== 0) || (el % 5 !== 0))) {
            newArr.push(el);
          }
    });
    return newArr;
}

function isPrime(num){
    if(num < 2){
        return false
    };
    for(let i = 2; i < num; i++){
        if(num % i === 0){
            return false
        };
    }
    return true;
}

function sumOfNPrimes(num){
    let total = 0;
    let count = 0;
    let i = 2;
    while (count < num){
        if (isPrime(i)){
            total += i;
            count += 1;
        }
        i += 1;
    }
    return total;
}
