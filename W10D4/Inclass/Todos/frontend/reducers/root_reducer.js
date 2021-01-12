import todosReducer from './todos_reducer';
import { combineReducers } from "redux";

// const rootReducer = (state = {}, action) => {
//     return {
//         todos: todosReducer
//     }
// }


const rootReducer = combineReducers({
    todos: todosReducer
});

export default rootReducer;