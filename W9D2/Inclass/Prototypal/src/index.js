const Asteroid = require("./asteroid.js");
const MovingObject = require("./moving_object.js");
window.MovingObject = MovingObject;

const GameView = require('./game_view.js');
window.GameView = GameView;

const Game = require('./game.js');
window.Game = Game;

window.Asteroid = Asteroid;
window.addEventListener('DOMContentLoaded', function(){
    const canvasEl = document.getElementById('game-canvas');
    canvasEl.width = 500;
    canvasEl.height = 500
    const ctx = canvasEl.getContext('2d');
    window.ctx = ctx;
    // test
    const mo = new MovingObject({
        pos: [30, 30],
        vel: [100, 100],
        radius: 50,
        color: "#00FF00"
    });

    const ast = new Asteroid({ pos: [340, 30] });
    ast.draw(ctx);

    mo.draw(ctx);
    // test
    mo.move();
    mo.draw(ctx);
});