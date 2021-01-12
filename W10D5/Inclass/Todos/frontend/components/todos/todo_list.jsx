import React from 'react';
import TodoListItem from '../todo_list/todo_list_item';
import TodoForm from '../todo_list/todo_form';

class TodoList extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
    }

    render() {
        const todos = this.props.todos.map ( (todo, index) => {
            return (
                <li key={index}>
                    <TodoListItem todo={todo}/>
                </li>
            )
        })

        return (
            <div>
                <h1>Here is a Todo List!</h1>
                <div>
                    <TodoForm receiveTodo={this.props.receiveTodo}/>
                </div>
                <div>
                    <ul>
                        {todos}
                    </ul>
                </div>
            </div>
        )
    }
}

export default TodoList;