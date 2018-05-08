// console.log('hello')
// console.log(72 * 2.54);

var num = 1
let numTwo = 7
num3 = 3
const daysOfTheWeek = ['Monday', 'Tuesday', "Thurday", 'Friday', "Sat", "Sun"]

//console.log(`You are ${prompt("How tall are you in inches?")} inches`)


// var meters = prompt("how tall are you in meters?")
// console.log(meters * 39.3701)

function metersToInches(meters) {
  var metersToInches = meters * 39.3701
  return `You are ${metersToInches} tall`
}

// console.log(metersToInches(prompt("Haow tall are you in meters?")))


function greeting(name) {
  if (name == "Emily") {
    return "That's may name too!"
  } else {
    return `HELLLO!!!!! ${name}`
  }
}

// console.log(greeting(prompt("What is your name?")))
$(document).ready(function() {
  $('.charles').click(function() {
    $('.charles').slideDown()
  })
})
