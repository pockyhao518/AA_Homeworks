import { combineReducers } from 'redux';
import entitiesReducer from './entities';
import sessionReducers from './session'
export default combineReducers({
  entities: entitiesReducer,
  session: sessionReducers,
});
