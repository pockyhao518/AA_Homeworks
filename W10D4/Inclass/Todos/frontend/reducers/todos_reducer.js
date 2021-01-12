import { RECEIVE_TODOS, RECEIVE_TODO } from "../actions/todo_actions";

const initialState = {
    1: {
      id: 1,
      title: "wash car",
      body: "with soap",
      done: false
    },
    2: {
      id: 2,
      title: "wash dog",
      body: "with shampoo",
      done: true
    }
};

const todosReducer = (state = initialState, action) => {
    Object.freeze(state);
    let newState;
    switch(action.type) {
        case RECEIVE_TODOS:
            let newToDos = {};
            action.todos.forEach( todo => {
                newToDos[todo.id] = todo;    
            });
            newState = Object.assign({}, state, newToDos)
            return newState;
        case RECEIVE_TODO:
            const newToDo = {
                [action.todo.id]: action.todo
            }
            newState = Object.assign({}, state, newToDo)
            return newState;
        default:
            return state;
    }
};

export default todosReducer;