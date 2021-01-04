/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is not neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Utils = __webpack_require__(/*! ./utils.js */ \"./src/utils.js\");\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\n\nconst Default = {\n    color: \"#FF7F50\",\n    radius: 20\n};\n\nfunction Asteroid(option){\n    option.pos = option.pos;\n    option.vel = Utils.randomVec(Math.random());\n    option.color = Default.color;\n    option.radius = Default.radius;\n\n    MovingObject.call(this, option)\n};\n\nUtils.inherits(Asteroid, MovingObject)\n\nmodule.exports = Asteroid;\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("// const { dimgray } = require(\"color-name\");\nconst Asteroid = __webpack_require__(/*! ./asteroid */ \"./src/asteroid.js\");\n\nfunction Game(){\n    const DIM_X = 500 ;\n    const DIM_Y = 500;\n    const NUM_ASTEROIDS = 8;\n\n    // Game.addAsteroids();\n}\n\nGame.prototype.addAsteroids = function(){\n    const astAll = [];\n    for(let i = 0; i < Game.NUM_ASTEROIDS; i++){\n        astAll.push(new Asteroid(Game.randomPosition()));\n    }\n    return astAll;\n}\n\nGame.prototype.randomPosition = function(){\n    let position = [];\n    position.push(Math.random()*DIM_X);\n    position.push(Math.random()*DIM_Y);\n    return position\n}\n\nGame.prototype.draw = function(ctx){\n    // void ctx.clearRect(x, y, width, height);\n    ctx.clearRect(0,0,Game.DIM_X, Game.DIM_Y);\n    this.addAsteroids().forEach(el => {\n        el.draw(ctx)\n    })\n}\n\nGame.prototype.moveObject = function(){\n    this.Asteroid.forEach(el => {\n        el.move();\n    })\n}\n\n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/***/ ((__unused_webpack_module, __unused_webpack_exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\n\nfunction GameView(ctx){\n    const game = new Game();\n}\n\nGameView.prototype.start = function (){\n    setInterval(Game.prototype.moveObject(),20);\n    setInterval(Game.prototype.draw(), 20);\n}\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/***/ ((module) => {

eval("function MovingObject(option){\n    this.pos = option.pos; //option.pos === the value of the pos \n    this.vel = option.vel;\n    this.radius = option.radius;\n    this.color = option.color;\n}\n\n// document.addEventListener('DOMContentLoaded', (draw)=>{\n    MovingObject.prototype.draw = function(ctx){\n        ctx.fillStyle = this.color;\n        ctx.beginPath();\n\n        ctx.arc(\n            this.pos[0],\n            this.pos[1],\n            this.radius,\n            0,\n            2 * Math.PI,\n            false\n        );\n\n        ctx.fill();\n    }\n// });\n\nMovingObject.prototype.move = function(){\n    this.pos[0] += this.vel[0];\n    this.pos[1] += this.vel[1];\n}\n\n\n\nmodule.exports = MovingObject;\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/utils.js":
/*!**********************!*\
  !*** ./src/utils.js ***!
  \**********************/
/***/ ((module) => {

eval("const Utils = {\n    inherits(childClass, parentClass){\n        childClass.prototype = Object.create(parentClass.prototype);\n        childClass.prototype.constructor = childClass;\n    },\n    // Return a randomly oriented vector with the given length.\n    randomVec(length) {\n        const deg = 2 * Math.PI * Math.random();\n        return Utils.scale([Math.sin(deg), Math.cos(deg)], length);\n    },\n    // Scale the length of a vector by the given amount.\n    scale(vec, m) {\n        return [vec[0] * m, vec[1] * m];\n    }\n};\n\nmodule.exports = Utils;\n\n//# sourceURL=webpack:///./src/utils.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
eval("const Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nwindow.MovingObject = MovingObject;\n\nconst GameView = __webpack_require__(/*! ./game_view.js */ \"./src/game_view.js\");\nwindow.GameView = GameView;\n\nconst Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\nwindow.Game = Game;\n\nwindow.Asteroid = Asteroid;\nwindow.addEventListener('DOMContentLoaded', function(){\n    const canvasEl = document.getElementById('game-canvas');\n    canvasEl.width = 500;\n    canvasEl.height = 500\n    const ctx = canvasEl.getContext('2d');\n    window.ctx = ctx;\n    // test\n    const mo = new MovingObject({\n        pos: [30, 30],\n        vel: [100, 100],\n        radius: 50,\n        color: \"#00FF00\"\n    });\n\n    const ast = new Asteroid({ pos: [340, 30] });\n    ast.draw(ctx);\n\n    mo.draw(ctx);\n    // test\n    mo.move();\n    mo.draw(ctx);\n});\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;