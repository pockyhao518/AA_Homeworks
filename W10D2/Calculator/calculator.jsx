import React from "react";

class Calculator extends React.Component {
    constructor() {
        super();
        // your code here
        this.state={num1:'', num2:'', result:0}
        this.setNum1 = this.setNum1.bind(this);
        this.setNum2 = this.setNum2.bind(this);
        this.add = this.add.bind(this);
    }

    // your code here

    setNum1(e){
        if(e){
            const num1 = parseInt(e.target.value);
            this.setState({num1:num1})
        }
    }

    setNum2(e) {
        if (e) {
            const num2 = parseInt(e.target.value);
            this.setState({ num2: num2 })
        }
    }

    add(){
        const result = this.state.num1 + this.state.num2;
        this.setState({result:result})
    }

    render() {
        return (
            <div>
                <h1>{this.state.result}</h1> 
                <input onChange={this.setNum1} value={this.state.num1}/>
                <br/>
                <input onChange={this.setNum2} value={this.state.num2}/>
                <br/>
                <button onClick={this.add}>+</button>
                
            </div>
        );
    }
}

export default Calculator;