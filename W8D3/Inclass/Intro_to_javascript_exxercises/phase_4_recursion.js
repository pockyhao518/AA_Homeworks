function range(start, end){ // 1  1
    if(start === end){
        return [end];
    }
    let result = range(start, end - 1); //  [1]   range(1,1)
    result.push(end);                   // [1,1]  [1,2]
    return result;
}

// console.log(range(1,5))

function sumRec(arr){
    if(arr.length === 0){
        return 0
    }
    let last = arr[arr.length - 1];
    return last + sumRec(arr.slice(0, arr.length - 1))
}

// console.log(sumRec([1,2,3,4,5])) // => 15

function exponent(base, exp){
    if (exp === 0){
        return 1;
    }else{
        return base * exponent(base, exp - 1);
    }

}

// console.log(exponent(2,0));
// console.log(exponent(2,3))

function fibonacci(n){
    if (n < 3){
        return [1, 1].slice(0, n)
    };
    let fib = fibonacci(n - 1);
    fib.push(fib[fib.length - 1] + fib[fib.length - 2]);
    return fib;
}

// console.log(fibonacci(5)) // => [1,1,2,3,5]

function deepDup(arr){

}

function bsearch(arr, target){
    if (arr[Math.round(arr.length / 2)] === target) {
        return Math.round(arr.length / 2);
    };

    let mid = Math.round(arr.length / 2);
    if (arr[Math.round(arr.length / 2)] > target) {
        return bsearch(arr.slice(0, mid), target);
    } else {
        return mid + bsearch(arr.slice(mid, arr.length), target);
    }
}

// console.log(bsearch([1,1,2,3,5], 5))    // 4

function mergesort(arr){
    if (arr.length < 2) {
        return arr;
    } else {
        let mid = Math.round(arr.length / 2);

        let left = arr.slice(0, mid);
        let right = arr.slice(mid, arr.length);

        return merge(mergesort(left), mergesort(right));
    };
};

function merge(arr1, arr2) {
    let result = [];
    
    while (arr1.length > 0 && arr2.length > 0) {
        if (arr1[0] < arr2[0]) {
            result.push(arr1.shift(0))
        } else {
            result.push(arr2.shift(0))
        };
    };

    return result.concat(arr1, arr2);
}

// arr = [1, 4, 5, 2, 3, 7, 6, 8, 9];
// console.log(mergesort(arr));

function subsets(arr){                      // [1, 2, 3]
    if (arr.length === 0) {
        return [[]];
    } else {
        let subset = subsets(arr.slice(0, arr.length-1));
        let result = [];
        subset.forEach(el => { 
            let sub_arr = []
            el.forEach(ele=>{
                sub_arr.push(ele)
            })
            result.push(sub_arr)
            el.push(arr[arr.length-1])
            result.push(el)
        });

        return result;


        // //attempt #2
        // let first = [arr[0]];             // 1
        // let remaining = arr.slice(1)    // [2, 3]
        // let result = subsets(remaining)

        // // remaining.forEach(el => {
        // //    result.push(first) 
        // // });

        // result.push(first)
        // return result
    }
};

arr = [1,2,3,4,5];
console.log(subsets(arr));      // [[], [1], [1, 2], [1, 3], [1, 2, 3], [2], [2, 3], [3]]