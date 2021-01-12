import React from 'react';
import { connect } from 'react-redux';
import TodoList from 'todo_list';
import allTodos from './selector';

const mapStateToProps = (state) => {
    return {
        todos: Object.values(state.todos.id)
    }
}