function hasOdd(numbers) {
  odds = [];
  for(i=0;i<numbers.length;i++){
    if(numbers[i] % 2 != 0){
      odds.push(numbers[i]);
    }
  }
  console.log(odds);
}

hasOdd([1, 2, 3, 4, 5])


function square(numbers) {
  return numbers.map((num) => num ** 2);
}

console.log(square([1, 2, 3, 4, 5]))
