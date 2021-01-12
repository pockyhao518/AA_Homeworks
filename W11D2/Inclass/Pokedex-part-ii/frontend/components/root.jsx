import React from 'react';
import { Provider } from 'react-redux';
import PokemonIndexContainer from './../components/pokemon/pokemon_index_container';
import App from "./app"
import {HashRouter} from "react-router-dom"
import PokemonDetail from './pokemon/pokemon_detail';
import {Route} from "react-router-dom"
const Root = ({ store }) => (
  <Provider store={store}>
    <HashRouter>
      <App/>
      

       <Route path='/pokemon/:id'
        component={PokemonDetail}
       />
    </HashRouter>
  </Provider>
);

export default Root;