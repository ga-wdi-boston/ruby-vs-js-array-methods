'use strict';

let fibs = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34];



// sum
let sumFibs = fibs.reduce(function(prev,curr){
  return prev + curr;
}, 0);

// product
let prodFibs = fibs.slice(1,fibs.length).reduce(function(prev,curr){
  return prev * curr;
}, 1);

// sum odd
let sumOdd = fibs.filter(function(val){
  return val % 2 !== 0;
})
.reduce(function(prev,curr){
  return prev + curr;
}, 0);

// prod even
let prodEven = fibs.filter(function(val){
  return val % 2 === 0 && val > 0;
})
.reduce(function(prev,curr){
  return prev * curr;
}, 1);

// print out
console.log('fibs: ', fibs);
console.log('sumFibs: ', sumFibs);
console.log('prodFibs: ', prodFibs);
console.log('sumOdd: ', sumOdd);
console.log('prodEven: ', prodEven);
console.log('fibs: ', fibs);
