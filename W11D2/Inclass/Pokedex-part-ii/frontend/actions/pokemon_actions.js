import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_POKEMON = "RECEIVE_POKEMON";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})

export const receiveSinglePokemon = (poke) => ({
  type: RECEIVE_POKEMON,
  poke
})

export const requestSinglePokemon = (myid) => (dispatch) => (
  APIUtil.fetchpokemon(myid)
    .then(poke => dispatch(receiveSinglePokemon(poke)))
)

export const requestAllPokemon = () => (dispatch) => (
  APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
)