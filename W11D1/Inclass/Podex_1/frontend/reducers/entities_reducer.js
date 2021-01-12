import {combineReducers} from 'redux';
import pokemonReducer from './pokemon_reducer';
import movesReducer from './moves_reducer';
import itemsReducer from './items_reducer';

// const entitiesReducer = (state = {}, action) => {
//     return {
//         pokemon: pokemonReducer(state.pokemon, action), // this is entities.pokemon
//         moves: movesReducer(state.moves, action),
//         items: itemsReducer(state.items, action)
//     };
// };

const entitiesReducer = combineReducers({
    pokemon: pokemonReducer
    // moves: movesReducer, 
    // items: itemsReducer
})


export default entitiesReducer;

