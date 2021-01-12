export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";

export const receiveAllPokemon = pokemon => ({ 
    type: RECEIVE_ALL_POKEMON,
    pokemon // object pokemon, that contains all pokemon
});