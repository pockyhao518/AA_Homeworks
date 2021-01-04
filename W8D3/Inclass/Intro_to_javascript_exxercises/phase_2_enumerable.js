Array.prototype.myEach = function(callback){
    for (let i = 0; i < this.length; i++){
        callback(this[i])
    }
};

// [1,2,3,4,5].myEach(num => {console.log(`${num}`)});

Array.prototype.myMap = function(callback){
    let mapped = [];
    this.myEach(el=>{
        mapped.push(callback(el))
    });
    return mapped;
};

function plusone(num){
    num += 1;
    return num;
};

// console.log([1,2,3,4,5].myMap(plusone))

Array.prototype.myReduce = function(callback, initialValue) {
    let result = 0

    if (initialValue !== undefined) { result = initialValue };

    this.myEach(el => {
        result = callback(result, el)
    });

    return result;
};

// console.log([1,2,3,4,5].myReduce(function(acc, el) {return acc + el }, 5));
// console.log(["h","e","l","l","o"].myReduce(function(acc, el) {return acc + el }, ""));