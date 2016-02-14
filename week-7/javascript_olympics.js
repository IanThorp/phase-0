 // JavaScript Olympics

// I paired [with: Mike London] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
var john = {
  name: "John Jacobs",
  event: "Swimming"
}

var charlie = {
  name: "Charlie Jones",
  event: "Track"
}

var testArray = [john, charlie];

// console.log(testArray[0].name);


var bulkUp = function (athleteArray) {
  for (var i = 0; i < athleteArray.length; i++){
athleteArray[i].win = (athleteArray[i].name + " has won the " + athleteArray[i].event + " event!");
  }

}

bulkUp(testArray);

console.log(charlie.win);


// Jumble your words


var testString = "Does this work?"

function strReverse(string){
  return string.split("").reverse().join("");
}
console.log(strReverse(testString));


// 2,4,6,8

var testNumArray = [1, 2, 3, 4, 5, 6, 7, 8, 10];

function findEvens(numArray) {
  function isEven(num){
    return num % 2 == 0;
  }
  var evenArray = numArray.filter(isEven)
  return evenArray
}
console.log(findEvens(testNumArray));



// "We built this city"


function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
/*

What JavaScript knowledge did you solidify in this challenge?

  I solidified most everything I know about javascript. Most of all though, was wokring with objects. I am much more comfortable with this now.

What are constructor functions?

  constructor functions are able to create a new object with a set list of properties. These properties can be created when the function is called, or have default properties already assigned.

How are constructors different from Ruby classes (in your research)?

  A class is able to assign more specific functions to a variety of instances. So far, it seems like a constructor can only create an object and properties. Seems to be not quite as powerful.

  */