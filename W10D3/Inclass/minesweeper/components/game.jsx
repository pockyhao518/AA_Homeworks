import React from 'react';
import Board from './board'
import * as Minesweeper from '../minesweeper'

class Game extends React.Component {

    constructor(props) {
        debugger
        super(props);
        const board = new Minesweeper.Board(9, 10);
        this.state = { board: board };
        this.updateGame = this.updateGame.bind(this);
        this.restartGame = this.restartGame.bind(this);
    }

    render() {
        debugger
        let something = '';
        if(this.state.board.lost()){
            something = (
                <div className='modal-screen'>
                    <div className='modal-content'>
                        You Lost!!!
                        <button onClick={this.restartGame}>play again</button>
                    </div>
                </div>
            )
        }else if(this.state.board.won()){
            something = (
                <div className = 'modal-screen' >
                    <div className='modal-content'>
                        You Won!!!
                        <button onClick={this.restartGame}>play again</button>
                    </div>
                </div>
            )
        }

        return (
            <div>
                {something}
                <Board board={this.state.board} updateGame={this.updateGame}/>
            </div>
        )
    }

    restartGame(){
        debugger
        const board = new Minesweeper.Board(9, 10);
        this.setState({board:board})
    }

    updateGame(tile, flagged) {
        debugger
        if(flagged){
            tile.toggleFlag();
        }else{
            tile.explore();
        }
        this.setState({board:this.state.board});
    }
}

export default Game;