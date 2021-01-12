import entitiesReducer from './entities_reducer';
import {combineReducers} from 'redux'

// const rootReducer = (state = {}, action) => {
//     return {
//       entities: entitiesReducer(state.entities, action)
//     };
// };


const rootReducer = combineReducers({
    entities: entitiesReducer
});

export default rootReducer;