Array.prototype.bubbleSort = function() {
    let sorted = false

    while (sorted === false) {
        sorted = true

        for (let i = 0; i < this.length; i++) {
            for (let j = i+1; j < this.length; j++) {
                if (this[i] > this[j]) {
                    [this[i], this[j]] = [this[j], this[i]];
                    sorted = false;
                }
            }
        }
    };

    return this;
};

// console.log([5, 3, 4, 1, 2].bubbleSort());

String.prototype.substrings = function(){
    let substrings = [];
    for (let i = 0; i < this.length; i++){
        for (let j = i + 1; j <= this.length; j++){
            substrings.push(this.slice(i,j));
        }
    }
    return substrings;
}

console.log('Hello'.substrings());