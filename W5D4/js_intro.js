var madLib = function(verb, ad, noun) {
  return console.log("We shall " + verb.toUpperCase() + " " + "the " + ad.toUpperCase() + " " + noun.toUpperCase())
};
madLib('make', 'best', 'guac');


var isSubstring = function(string, substring) {
  let stringArr = string.split(" ")
  for (var i in stringArr ) {
    if (stringArr[i] === substring) {
      return console.log(true)
    }
  }
  return console.log(false)
}

isSubstring("time to program", "time")
// true
isSubstring("Jump for joy", "joys")
// false

let fizzBuzz = function(arr) {
  let answerArr = []
  for (let i in arr) {
    if (arr[i] % 5 === 0 || arr[i] % 3 === 0) {
      answerArr.push(arr[i])
    }
  }
  return console.log(answerArr)
}
fizzBuzz([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])


var isPrime = function(num) {
  for (i=2; i < num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
};


isPrime(2)
// true
isPrime(10)
// false
isPrime(15485863)
// true
isPrime(3548563)
// false


let sumOfNPrimes = function(num) {
  let i = 2;
  let answer = 0;
  let counter = 0;
  while (counter < num) {
    if (isPrime(i) === true) {
      answer += i;
      counter += 1;
    }
    i += 1;
  }
  return console.log(answer);
};
sumOfNPrimes(0)
// 0
sumOfNPrimes(1)
// 2
sumOfNPrimes(4)
// 17
