function sum(num1,num2) {
  return num1+num2
}

function multiply(num1,num2){
  return num1*num2
}

function divide(num1,num2){
  return num1/num2
}

function square(num1){
  return num1*num1
}

module.exports.sum = sum;
module.exports.multiply = multiply;
module.exports.divide = divide;
module.exports.square = square;

const stringMode = require('./strings-module.js')

console.log(stringMode.bigSmall("this is a big string of stuff"))
