# w9d2


# Util (src/utils.js)
    Utility code, especially vector math stuff.

# MovingObject (src/moving_object.js)
    Base class for anything that moves.
    Most important methods are MovingObject.prototype.move, MovingObject.prototype.draw(ctx), MovingObject.prototype.isCollidedWith(otherMovingObject).

# Asteroid (src/asteroid.js)
    Spacerock. It inherits from MovingObject.

# Bullet (src/bullet.js)
    Kill spacerocks with this. Also a MovingObject subclass.

# Ship (src/ship.js)
    This is you! Another MovingObject subclass.

# Game (src/game.js)
    Holds collections of the asteroids, bullets, and your ship.
    Game.prototype.step method calls Game.prototype.move on all the objects, and Game.prototype.checkCollisions checks for colliding objects.
    Game.prototype.draw(ctx) draws the game.
    Keeps track of dimensions of the space; wraps objects around when they drift off the screen.

# GameView (src/game_view.js)
    Stores a Game instance.
    Stores a canvas context to draw the game into.
    Installs key listeners to move the ship and fire bullets.
    Installs a timer to call Game.prototype.step.