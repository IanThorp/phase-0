/*
Pseudocode:
Method to create a list:
input: list name
steps: print and return list
output: Object

Method to add an item to the list:
input: item name and optional quantity and list name
steps: Add item name and quantity to list as property/value
output: return update list

Method to remove an item from the list:
input: list name, item name
Steps: remove item from list
output: return updated list

Method to update quantity of item:
input: list name, item name, new quantity
Steps: Change quantity for item to new quantity
output: return updated list

Method to print list:
input: list name
Steps: print title of list
        print each item of list on its own line
output: printed list
*/

// initial solution

function create() {
  return new Object();
}

function add(map, item_name, item_quantity){
  map[item_name] = item_quantity;
}

function remove(map, item_name){
  delete map[item_name];
}

function update(map, item_name, new_quantity){
  add(map, item_name, new_quantity);
}

function printList(map){
  console.log("GROCERY LIST");
  for(var item in map){
    console.log(item + " " + map[item]);
  }
}

var grocery = create();
add(grocery, "apple", 1);
add(grocery, "pear", 2);
printList(grocery);
remove(grocery, "pear");
printList(grocery);
update(grocery, "apple", 2);
printList(grocery);

//Refactor
// I did not see any refactoring that was necessary

function create() {
  return new Object();
}

function add(map, item_name, item_quantity){
  map[item_name] = item_quantity;
}

function remove(map, item_name){
  delete map[item_name];
}

function update(map, item_name, new_quantity){
  add(map, item_name, new_quantity);
}

function printList(map){
  console.log("GROCERY LIST");
  for(var item in map){
    console.log(item + " " + map[item]);
  }
}

/*
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

  I solidified calling objects and their properties individually. Also, I solidified basic syntax for JavaScript.

What was the most difficult part of this challenge?

  I had trouble getting the list to print in a more pretty way. I think it came out ok though.

Did an array or object make more sense to use and why?

  I used an object. With an object it is easy to store the property as the item name and the value as the quantity. With an array, I would not be able to link the item to the quantity as easily.

*/