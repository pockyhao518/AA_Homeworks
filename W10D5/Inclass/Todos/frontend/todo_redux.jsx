import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import { receiveTodos, receiveTodo } from './actions/todo_actions';
import allTodos from './reducers/selectors';




document.addEventListener("DOMContentLoaded", () => {
    // remove the window.store later, only good for testing during development
    window.store = configureStore;
    window.receiveTodos = receiveTodos;
    window.receiveTodo = receiveTodo;
    window.allTodos = allTodos;

    
    const content = document.getElementById("content");
    ReactDOM.render(<Root store={store} />, content);
})