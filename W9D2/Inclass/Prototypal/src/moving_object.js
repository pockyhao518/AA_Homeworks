function MovingObject(option){
    this.pos = option.pos; //option.pos === the value of the pos 
    this.vel = option.vel;
    this.radius = option.radius;
    this.color = option.color;
}

// document.addEventListener('DOMContentLoaded', (draw)=>{
    MovingObject.prototype.draw = function(ctx){
        ctx.fillStyle = this.color;
        ctx.beginPath();

        ctx.arc(
            this.pos[0],
            this.pos[1],
            this.radius,
            0,
            2 * Math.PI,
            false
        );

        ctx.fill();
    }
// });

MovingObject.prototype.move = function(){
    this.pos[0] += this.vel[0];
    this.pos[1] += this.vel[1];
}



module.exports = MovingObject;