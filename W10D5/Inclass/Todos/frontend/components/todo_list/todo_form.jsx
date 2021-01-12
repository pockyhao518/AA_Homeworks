import React from 'react';

class TodoForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = { title: "" };
        this.update = this.update.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return (e) => {
            this.setState({ [field]: e.target.value });
        };
    }
    
    handleSubmit(e) {
        // debugger 
        e.preventDefault();
        debugger
        this.props.receiveTodo(this.state);
        //^ this will invoke the function from its mDTP 'addPost'
        this.setState({ title: "" })
        debugger
    }
    // componentDidMount?

    render() {
        return (
            <form onSubmit={this.handleSubmit}>
                <label htmlFor=""></label>
                <input type="text" onChange={this.update("title")} value={this.state.title}/>


                <button>Submit</button>
            </form>
        )
    }
}

export default TodoForm;

// <input onClick={this.updateWord} value={this.state.word} />