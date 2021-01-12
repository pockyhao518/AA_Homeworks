import React from 'react';
import Tile from './tile';

class Board extends React.Component {

    constructor(props){
        debugger
        super(props);
        // this.props.board
        // this.props.update()
        this.renderRow = this.renderRow.bind(this);
        this.renderTile = this.renderTile.bind(this);
    }

    renderTile(row, i){
        debugger
        return row.map((tile, j)=>{
            return(        
                    <Tile 
                    tile={tile}
                    updateGame={this.props.updateGame}
                    key={ `row${i}:col${j}`}
                    />             
            )
        })
    }

    renderRow(){
        debugger
        const board = this.props.board;
        return board.grid.map((row, idx)=>{
            return (
                <div className='row' key={`row${idx}`}>
                    {this.renderTile(row, idx)}
                </div>
                
            )
        })
    }

    render() {
        debugger
        return (
            <div id='board'>
                {this.renderRow()}
            </div> 
        )
    }
}

export default Board;