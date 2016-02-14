/*
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mike London

// Pseudocode

Input : integer
Output: String of integer w/ commas
Steps:
Create a variable and assign that variable to a string of the argument
IF argument is greater or equal to 1000
  Split the string into an array
  reverse the array of string
  FOR  every third  element insert  a   comma after the element.
  Reverse the array and then convert it back into a string
  Return the string with commas
ELSE it should return the argument as a string

*/

// Initial Solution

function insertComma (number) {
  var numString = number.toString();
  if (number >= 1000) {
    var arrayReverse = numString.split('').reverse();
    var testArray = [];
    for (var i = 0; i <= numString.length; i ++){
      if (i % 3 == 0 && i != 0) {
        var additonal = (i/3) - 1;
        arrayReverse.splice((i + additonal), 0, ",");
     }
  }
    if ( numString.length % 3 == 0) {
    arrayReverse.pop();
    }
    var secondToLast = arrayReverse.reverse().join("");
    console.log(secondToLast);

  } else {
    console.log(numString);
  }
}

insertComma(984093409289343098);

// Refactored Solution

function insertComma (number) {
  var numString = number.toString();
  if (number >= 1000) {
    var arrayReverse = numString.split('').reverse();
    for (var counter = 0; counter <= numString.length; counter++){
      if (counter % 3 == 0 && counter != 0) {
        var additonal = (counter/3) - 1;
        arrayReverse.splice((counter + additonal), 0, ",");
      }
    }

    if (numString.length % 3 == 0) arrayReverse.pop();

    numString = arrayReverse.reverse().join("");


  }
  return numString;
}

console.log(insertComma(94242234));


// Your Own Tests (OPTIONAL)




// Reflection
/*

What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

  I feel like our early approach to the problem was pretty similar, but as we tried different things in JavaScript, our approach changed and adapted to work best with JavaScript.

What did you learn about iterating over arrays in JavaScript?

  For loop specifically in JavaScript seem much easier to use and I can see myself using these a lot.

What was different about solving this problem in JavaScript?

  The main difference was that we used a for statement and the explicit returning of values slowed us down a few times. Not to mention all the syntax errors!!!

What built-in methods did you find to incorporate in your refactored solution?

  Reverse, join, and split helped us a lot to get this problem solved.