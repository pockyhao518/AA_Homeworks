const Game = require('./game.js');

function GameView(ctx){
    const game = new Game();
}

GameView.prototype.start = function (){
    setInterval(Game.prototype.moveObject(),20);
    setInterval(Game.prototype.draw(), 20);
}