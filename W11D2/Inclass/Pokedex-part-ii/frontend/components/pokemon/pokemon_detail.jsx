import React from 'react';
import {Route, HashRouter, Switch} from 'react-router-dom';
import { requestSinglePokemon } from '../../actions/pokemon_actions';
import { connect } from 'react-redux'; 
import { fetchpokemon } from '../../util/api_util';

class PokemonDetail extends React.Component{
    constructor(props){
        super(props)
        debugger;
    }
    componentDidMount(){
        requestSinglePokemon()
    };
    render(){
        debugger;

        return (
            <Route path='/pokemon/'>
                <div> 
                    This is pokemons details component.

                </div>
            </Route>
        )
    }
}

const mDTP = dispatch => {
    debugger
    return {
      fetchPost: postId => {
        return dispatch(requestSinglePokemon(postId)); 
      }
    }
  }

  const mSTP = (state, ownProps) => {
    debugger
    const id = ownProps.match.params.id; // postId wilcard in url 
  
    // grab the post from state with id of postId
    // in case no such post exists in our state (yet), default to empty object (avoid errors when we key into post in our presentational component)
    const post = state.entities.pokemon[id] || {}; 
  
    return {
      pokemon: id
    }
  }

  export default connect(mSTP, mDTP)(PokemonDetail);