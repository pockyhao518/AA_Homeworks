import React from 'react';
import ReactDOM from 'react-dom'
import {receiveAllPokemon} from './actions/pokemon_actions'
import configureStore from './store/store';
import {fetchAllPokemon} from './util/api_util';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    const store = configureStore();
    window.store = store;
    window.receiveAllPokemon = receiveAllPokemon; 
    window.fetchAllPokemon = fetchAllPokemon;
    window.getState = store.getState;
    window.dispatch = store.dispatch;
    ReactDOM.render(<h1>Pokedex</h1>, root);
});