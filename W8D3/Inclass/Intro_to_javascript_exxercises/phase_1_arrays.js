Array.prototype.uniq = function() {
    let newArray = []

    this.forEach(ele => {
        if (!newArray.includes(ele)) {
            newArray.push(ele)
        } 
    })

    return newArray
}

Array.prototype.twoSum = function() {
    let pairs = []

    // this.forEach(ele => {
    //     if (this.includes((-1) * ele)) {
    //         pairs.push([ele, ele*(-1)])
    //     }
    // })
    for (let i = 0; i < this.length-1; i++) {
        let ele = this[i]
        for (let j = i+1; j < this.length; j++) {
            let ele2 = this[j]

            if (ele + ele2 === 0) {
                pairs.push([i, j])
            }
        }
    } 

    return pairs
}

Array.prototype.transpose = function(){
    let arr = Array.from(
        {length: this[0].length}, 
        () => Array.from({
            length: this.length
        })
    );
    for(let i = 0; i < this.length; i++){
        for(let j = 0; j < this[i].length; j++){
            arr[j][i] = this[i][j];
        }
    }
    return arr;
}
// [1,2] =>  [1,3]
// [3,4]     [2,4]
// console.log([1,2,2,3,3,3].uniq())
// console.log([1,-2,2,-3,3].twoSum())
// console.log([[1,2],[3,4]].transpose())