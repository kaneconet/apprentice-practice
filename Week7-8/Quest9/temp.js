function checkTemperature(tmp){
  if(tmp >= 30){
    console.log("Hot");
  }
  else if(tmp >= 15){
    console.log("Warm");
  }
  else{
    console.log("Cold");
  }
}

function checkOddOrEven(num){
  if(num % 2 == 0){
    console.log("Even");
  }
  else{
    console.log("Odd");
  }
}

checkTemperature(30)
checkTemperature(17)
checkTemperature(2)


checkOddOrEven(2)
checkOddOrEven(1)
checkOddOrEven(5)
