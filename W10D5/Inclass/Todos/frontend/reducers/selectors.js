
const allTodos = (state) => {
    const todosIds = Object.keys(state.todos); // [1, 2, 3]
    return todosIds.map( id => { 
        return state.todos[id];
    })
}

export default allTodos;