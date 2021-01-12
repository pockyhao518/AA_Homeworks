import React from 'react';

class TodoListItem extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
    }

    render() {
        const title = this.props.todo.title
        return (
            <div>
                {title}
            </div>
        )
    }
}

export default TodoListItem;