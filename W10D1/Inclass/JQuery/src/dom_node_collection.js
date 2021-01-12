class DOMNodeCollection{
    constructor(array){
        this.array = array;

    }

    forEach(callback){
        for(let i = 0; i < this.length; i++){
            callback(this[i])
        }
    }

    html(args) {
        if (typeof args === 'string') {
            this.array.forEach((el) => {
                el.innerHTML = args;
            });
        } else if (this.array.length > 0) {
            return this.array[0].innerHTML;
        }
    }

    empty() {
        this.html('');
    }

    append(args){
        if ((typeof args === 'object') && !(args instanceof HTMLElement)){
            args = $l(args);
        }
        if (typeof args === 'string'){
            
            this.array.forEach(el => {
                el.innerHTML += args;
            })
        } else if(args instanceof HTMLElement){
        
            this.array.forEach(el => {
                el.innerHTML += args.outerHTML;
            }); 
        }  
        

        
    }
    addClass(newClass){
     this.array.forEach(el => {
        el.classList.add(newClass)
    })            
    }

    removeClass(oldClass){
        this.array.forEach(el => {
            el.classList.remove(oldClass)
        })          
    }
    attr(attributes, newAttribute = null){
       

        this.array.forEach(el => {
            if (newAttribute){
                el.setAttribute(newAttribute);
            }
           return el.getAttribute(attributes)
        })
    }

    children(){
        let result = [];
        this.array.forEach(el => {
            result.push(el.children)
        })
        return result;
    }

    parent(){
        let result = [];
        this.array.forEach(el => {
            result.push(el.parentNode)
        })
        return result;
    }

    find(selector){
        let result = [];
        const matches = document.querySelectorAll(selector);
        matches.forEach(el=>{
            result.push(el.children)
        })
        return result;
    }
}
module.exports = DOMNodeCollection