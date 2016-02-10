// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var test;
test = 5 + 10;

// Favorite Food

prompt("What is your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board


for (var triangle_string = ""; triangle_string.length <= 7;triangle_string += "#") {
  console.log(triangle_string);
}

// Functions

// Complete the `minimum` exercise.

function min (num1, num2){
  if (num1 < num2) {
      return num1;
    } else {
      return num2;
    }
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Ian",
  age: 24,
  fave_foods: ["Yellow Curry", "Bratwurst", "Crab Cakes"],
  quirk: "Plays Magic The Gathering"
}

