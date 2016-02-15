
// As a user, I want to be able to take a set of numbers and perform three different functions separately: sum, mean, and median. This set of numbers can have either an even or odd amount of integers. With sum, I want add all the numbers together. With mean, I want to find the average of all the numbers. With median, I want to find the middlemost number. If the set of numbers has an even amount of integers, find the average of the two middlemost numbers.

// Pseudocode:
// Create 2 sets of numbers (arrays) - each with its' own variable
// One variable has odd set of numbers other has even set
//
// Create function called "sum"
//  This function will take in an array as an argument
//  Within the function (inside {}'s) set a counter variable equal to 0
//  Set a variable length equal to the array's length
//  Set a variable called "sum" equal to 0
//  Set a for-loop condition that will continue on if counter < length
//  Modify the sum variable to add a number from the array on each iteration, add 1 to the counter
//  Return the total sum within the console.log to check answers.
//

function sum(array) {
  return array.reduce( (prev, curr) => prev + curr );
}

// Create function called "mean" (exact same as above but adding in one variable at the end)
//  This function will take in an array as an argument
//  Within the function (inside {}'s) set a counter variable equal to 0
//  Set a variable length equal to the array's length
//  Set a variable called "sum" equal to 0
//  Set a for-loop condition that will continue on if counter < length
//  Modify the sum variable to add a number from the array on each iteration, add 1 to the counter
//  *** Create var called avg and set to sum divided by length of array
//  Return the total avg within the console.log to check answers.

function mean(array) {
  return array.reduce( (prev, curr) => prev + curr ) / array.length;
}

// Create function called "median"
//  This function takes an array as an argument
//  Create a variable "middle" equal to the array's length divided by 2.  Make sure this number is rounded down.
//  IF array's length is odd return array[middle]
//  ELSE array's length is even return both array[middle] and [middle - 1]
// Add the finished solution here when you receive it.
function median(array) {
  var array = array.sort();
  var middle = (array.length / 2);
  if (middle % 2 == 0) {
    var midd_diff = (array[middle] % array[middle-1]) / 2;
    return array[middle-1] + midd_diff;
  }
  else {
    return array[middle- 0.5];
  }

}
// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)