// const { dimgray } = require("color-name");
const Asteroid = require("./asteroid");

function Game(){
    const DIM_X = 500 ;
    const DIM_Y = 500;
    const NUM_ASTEROIDS = 8;

    // Game.addAsteroids();
}

Game.prototype.addAsteroids = function(){
    const astAll = [];
    for(let i = 0; i < Game.NUM_ASTEROIDS; i++){
        astAll.push(new Asteroid(Game.randomPosition()));
    }
    return astAll;
}

Game.prototype.randomPosition = function(){
    let position = [];
    position.push(Math.random()*DIM_X);
    position.push(Math.random()*DIM_Y);
    return position
}

Game.prototype.draw = function(ctx){
    // void ctx.clearRect(x, y, width, height);
    ctx.clearRect(0,0,Game.DIM_X, Game.DIM_Y);
    this.addAsteroids().forEach(el => {
        el.draw(ctx)
    })
}

Game.prototype.moveObject = function(){
    this.Asteroid.forEach(el => {
        el.move();
    })
}
