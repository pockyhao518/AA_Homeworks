import {createStore, applyMiddleware} from 'redux';
import rootReducer from '../reducers/root_reducer';
import logger from 'redux-logger';

//call createStore , and pass it imported rootReduce and logger (which needs to be wrapped in a applyMiddleware call)
const configureStore = () => createStore (rootReducer, applyMiddleware(logger));

export default configureStore;