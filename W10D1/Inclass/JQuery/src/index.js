const DomNode = require("./dom_node_collection")

window.$l = $l; 
function $l(selector){
    array = []
    if (selector instanceof HTMLElement){
        array.push(selector)
        return new DomNode(array);
    }
    else {
    const matches = document.querySelectorAll(selector);
    matches.forEach(el => array.push(el));
    
     return new DomNode(array);
    }
}