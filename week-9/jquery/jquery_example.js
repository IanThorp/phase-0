// U3.W9:JQuery


// I worked on this challenge [ Robbie Santos ].
// This challenge took me [2] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

helloElement =$('.hello').css({'color':'green', 'border': '10px solid black', 'visibility':'visible'})

$('.mascot h1').html("<h1> SEA LIONS </h1>")

//RELEASE 4: Event Listener
  // Add the code for the event listener here

  $('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'https://s-media-cache-ak0.pinimg.com/236x/ff/77/6a/ff776a30b3bac4b9ff82ada4e94dc331.jpg')
  })

  $('img').on('mouseleave', function(){
    $(this).attr('src', 'dbc_logo.png');
  })
//RELEASE 5: Experiment on your own

$('img').click(function(){
  $(this).css({borderColor:'#f44d5e', borderStyle: 'solid'}).animate({
    borderWidth: 5,
    width: '10em'
  })
  })

$('img').click(function(){
    $(this).attr('src', 'http://www.pittsburghzoo.org/media/Animal_Images/Sea_Lion/california_sea_lion_5_Big.jpg')

})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*

What is jQuery?

A cross platform JavaScript library that makes it very easy to modify.

What does jQuery do for you?

jQuery changes elements in the DOM and can handle events for us. It has built in functions to maek all of these tricks a lot easier.

What did you learn about the DOM while working on this challenge?

I learned how to easily manipulate the DOM. It was interesting to see the DOM changing in real time. Using the DOM more efficiently lets me track the changes much more easily. It also adds flexibility to what changes I want to make.

*/