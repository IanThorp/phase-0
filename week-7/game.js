 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Two monsters, randomly moving and two powerups randomly placed.
// Overall mission: Kill all monsters
// Goals: Collect both powerups, use these to kill both monsters
// Characters: Player, Goblin, Orc
// Objects:player, goblin, orc, powerUp1, powerUp2
// Functions: powerfulOrDead

// Pseudocode
/*
Create all objects with properties
	goblin, orc, and player should have the properties of dead, position x, position y, and power.
	both power ups should have properties of position x, position y, and taken
A function to check if the player is in the same location as enemies or power ups
	IF power ups, it should increase the players power
	IF enemies, it should check the players power vs the enemy
		if the player is as powerful or more powerful, the enemy will die
		if this is not the case, the player will die.
A function to move the player. The player should only be able to move one space in either the y or x direction when this function is called.
	make sure the player does not go beyond the limits of the map (20 x 20 )
	When the player does move, the enemies should randomly move as well.
		extra function for enemy walk may be needed.
A function to locate all of the powerups, enemies, and player.
No functions should be able to be called if the player is dead.


// Initial Code


*/

var player = {
  power: 0,
  position: [10,10],
  dead: false
}

var goblin = {
  power: 0,
  position: positionRandom,
  dead: false
}

var orc = {
  power: 1,
  position: positionRandom(),
  dead: false
}

var powerUp1 = {
  position: positionRandom(),
  taken: false
}

var powerUp2 = {
  position: positionRandom(),
  taken: false
}

function positionRandom () {
	return [Math.floor(Math.random() * 21), Math.floor(Math.random() * 21)];
}

function powerfulOrDead () {
  if (player.posX === powerUp1.posX && player.posY === powerUp1.posY && powerUp1.taken === false) {
    player.power += 1;
    console.log("You grow more powerful! You now have a power of " + player.power + ".") ;
    powerUp1.taken = true;
  }
  if (player.posX === powerUp2.posX && player.posY === powerUp2.posY && powerUp2.taken === false) {
    player.power += 1;
    console.log("You grow more powerful! You now have a power of " + player.power + ".") ;
    powerUp1.taken = true;
  }
  if (player.posX === goblin.posX && player.posY === goblin.posY && goblin.dead === false) {
    if (player.power >= 1) {
      goblin.dead = true;
      console.log("You killed the goblin! Way to go!");
      if (orc.dead === true) {
        console.log("You killed all of your enemies! Congratulations!");
      }
    } else {
      player.dead = true;
      console.log("You were not powerful enough yet. The goblin killed you.");
    }
  }
  if (player.posX === orc.posX && player.posY === orc.posY && orc.dead === false) {
    if (player.power >= 2) {
      goblin.dead = true;
      console.log("You killed the orc! Way to go!");
      if (goblin.dead === true) {
        console.log("You killed all of your enemies! Congratulations!");
      }
    } else {
      player.dead = true;
      console.log("You were not powerful enough yet. The orc killed you.");
    }
  }
}

function enemyWalk (enemy) {
  var enemyDirection = Math.floor(Math.random() * 4);
  switch (enemyDirection) {
    case 0:
      // enemy walks up
      enemy.posY += 1;
      break;
    case 1:
      // enemy walks right
      enemy.posX += 1;
      break;
    case 2:
      // enemy walks down
      enemy.posY -= 1;
      break;
    case 3:
      // enemy walks left
      enemy.posX -= 1;
      break;
  }
}

function walk (direction) {
  if (player.dead === false) {
    switch (direction){
      case 'up':
        if (player.posY === 20) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.posY += 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'right':
        if (player.posX === 20) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.posX += 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'down':
        if (player.posY === 1) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.posY -= 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'left':
        if (player.posX === 1) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.posY -= 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }
      default:
        console.log("Please choose a direction!")
    }
  } else {
    console.log("You can't do that. You are dead!");
  }
}

function locate () {
  if (player.dead === false) {
    for (var i = 0; i <= 4; i ++) {
      switch (i) {
        case 0:
          console.log("You are located at " + player.posX + ", " + player.posY + ".");
          break;
        case 1:
          if (powerUp1.taken === false) {
          console.log("A power up is located at " + powerUp1.posX + ", " + powerUp1.posY + ".") ;
          }
          break;
        case 2:
          if (powerUp2.taken === false) {
          console.log("A power up is located at " + powerUp2.posX + ", " + powerUp2.posY + ".") ;
          }
          break;
        case 3:
          if (goblin.dead === false) {
          console.log("The goblin is located at " + goblin.posX + ", " + goblin.posY + ".") ;
          }
          break;
        case 4:
          if (orc.dead === false) {
          console.log("The orc is located at " + orc.posX + ", " + orc.posY + ".") ;
          }
          break;
      }
    }
  } else {
    console.log("You can't do that. You are dead!");
  }
}


walk('up');
locate();
walk('right');
locate();



// Refactored Code


var player = {
  power: 0,
  position: [10,10],
  dead: false
}

var goblin = {
  power: 0,
  position: positionRandom(),
  dead: false
}

var orc = {
  power: 1,
  position: positionRandom(),
  dead: false
}

var sword = {
  position: positionRandom(),
  taken: false
}

var shield = {
  position: positionRandom(),
  taken: false
}

function positionRandom () {
  return [Math.floor(Math.random() * 21), Math.floor(Math.random() * 21)];
}


function powerfulOrDead () {
  if (sameLocation(sword) && sword.taken === false) {
    player.power += 1;
    console.log("You grow more powerful! With this sword you now have a power of " + player.power + ".") ;
    sword.taken = true;
  }
  if (sameLocation(shield) && shield.taken === false) {
    player.power += 1;
    console.log("You grow more powerful! With this shield you now have a power of " + player.power + ".") ;
    sword.taken = true;
  }
  if (sameLocation(goblin) && goblin.dead === false) {
    if (player.power >= 1) {
      goblin.dead = true;
      console.log("You killed the goblin! Way to go!");
      if (orc.dead === true) {
        console.log("You killed all of your enemies! Congratulations!");
      }
    } else {
      player.dead = true;
      console.log("You were not powerful enough yet. The goblin killed you.");
    }
  }
  if (sameLocation(orc) && orc.dead === false) {
    if (player.power >= 2) {
      orc.dead = true;
      console.log("You killed the orc! Way to go!");
      if (goblin.dead === true) {
        console.log("You killed all of your enemies! Congratulations!");
      }
    } else {
      player.dead = true;
      console.log("You were not powerful enough yet. The orc killed you.");
    }
  }
}

function sameLocation(thing) {
  if (player.position[0] === thing.position[0] && player.position[1] === thing.position[1]) {
    return true;
  }
}
function enemyWalk (enemy) {
  var enemyDirection = Math.floor(Math.random() * 4);
  switch (enemyDirection) {
    case 0:
      // enemy walks up
      enemy.position[1] += 1;

      break;
    case 1:
      // enemy walks right
      enemy.position[0] += 1;
      break;
    case 2:
      // enemy walks down
      enemy.position[1] -= 1;
      break;
    case 3:
      // enemy walks left
      enemy.position[0] -= 1;
      break;
  }
}

function walk (direction) {
  if (player.dead === false) {
    switch (direction){
      case 'up':
        if (player.position[1] === 20) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.position[1] += 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'right':
        if (player.position[0] === 20) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.position[0] += 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'down':
        if (player.position[1] === 0) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.position[1] -= 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }

      case 'left':
        if (player.position[0] === 0) {
          console.log("There is a wall blocking your path!");
          break;
        } else {
          player.position[1] -= 1;
          enemyWalk(goblin);
          enemyWalk(orc);
          powerfulOrDead();
          break;
        }
      default:
        console.log("Please choose a direction!")
    }
  } else {
    console.log("You can't do that. You are dead!");
  }
}

function locate () {
  if (player.dead === false) {
    for (var i = 0; i <= 4; i ++) {
      switch (i) {
        case 0:
          console.log("You are located at " + player.position + ".");
          break;
        case 1:
          if (sword.taken === false) {
          console.log("A sword is located at " + sword.position + ".") ;
          }
          break;
        case 2:
          if (shield.taken === false) {
          console.log("A shield is located at " + shield.position + ".") ;
          }
          break;
        case 3:
          if (goblin.dead === false) {
          console.log("The goblin is located at " + goblin.position + ".") ;
          }
          break;
        case 4:
          if (orc.dead === false) {
          console.log("The orc is located at " + orc.position + ".") ;
          }
          break;
      }
    }
  } else {
    console.log("You can't do that. You are dead!");
  }
}




/*
// Reflection

What was the most difficult part of this challenge?

	I think the most difficult part was figuring out where to start. We haven't really been told to create our own project with minimal guidance yet, and this was really fun. I enjoyed that we were not given a whole lot of direction and allowed to experiment.

What did you learn about creating objects and functions that interact with one another?

	It was really reinforcing a lot of what I already know. One new thing I did was calling a function to create an object property. It was actually easier than I expected.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

	I feel like I went pretty basic for all of it, just using my own built functions.

How can you access and manipulate properties of objects?

	Accessing the properties is as simple as object.property.  To manipulate that, you can just say it equals something else. For example, object.property = 2.
*/