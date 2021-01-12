export const RECEIVE_TODOS = "RECEIVE_TODOS";

export const receiveTodos = (todos) => {
    return {
        type: RECEIVE_TODOS,
        todos,
    }
};

export const RECEIVE_TODO = "RECEIVE_TODO";

export const receiveTodo = (todo) => {
    const key = Math.floor(Math.random() * 1000);
    return {
        type: RECEIVE_TODO,
        todo,
    }
};