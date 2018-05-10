//console.log('hello')
//console.log(72 * 2.54);

//var num = 1
//let num2 = 2
//num3 = 3
//const daysOfTheWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

//console.log(num + num2 + num3)



//function toMeters(a) {
//  var a = prompt("How tall are you in inches?")
//  return `You are ${ a * .0254} meters tall.`
//}

//console.log(toMeters())


//function greeting(name) {
//  return `HELLO ${name}!!!`
//}

//console.log(greeting(prompt('What is your name?')))

function greeting(name) {
  if( name == "Emily") {
    return "That's may name too!"
  } else {
    return `HELLLO!!!!! ${name}`

  }
}




//var num = 45;

//if ( num < 50 ) {
//    console.log("Less than half.");
//}

$(document).ready(function() {
  $('.charles').click(function() {
    $(this).toggleClass('small-font')
    $(this).prepend("<h1>HELLO</h1>")
    $(this).slideUp()
  })
})


//$(document).ready(function() {
//  $('.charles').click(function() {
//    $(this).toggleClass('large-font')
//  })
//})
