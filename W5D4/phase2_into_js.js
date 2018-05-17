let printCallback = function(loopIt) {
  loopIt.forEach(val => console.log(val));
};

let titleize = function(arr, printCallback) {
  newArr = arr.map(function(val) {
    return "Mx. " + val.charAt(0).toUpperCase() + val.slice(1) + " " + "Jingleheimer Schmidt";
  });
  printCallback(newArr);
};

titleize(["Mary", "Brian", "Leo"], printCallback);

function Elephant(name, height, tricks) {
  this.name = name,
  this.height = height,
  this.tricks = tricks
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + " the elephant goes phrRRRRRR!!!!!")
}

Elephant.prototype.grow = function() {
  this.height = this.height + 12
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick)
}

Elephant.prototype.play = function() {
  return console.log(this.tricks[Math.floor(Math.random()*this.tricks.length)])
}

let elie = new Elephant("Bill", 76, ["this", "that", "this"])
elie.trumpet()
elie.grow()
console.log(elie.height)
elie.addTrick("Cool")
console.log(elie.tricks)
elie.play()




let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(ele) {
  console.log(ele.name + " is trotting by!")
}
Elephant.paradeHelper(micah);

for (let i in herd) {
  Elephant.paradeHelper(herd[i])
};









function dinerBreakfast() {
  let order = "I'd like cheesy scrambled eggs please.";
  console.log(order);

  return function (food) {
    order = order.slice(0, order.length - 8) + " and " + food + " " + "please.";
    console.log(order);
  };
};
//

let bfastOrder = dinerBreakfast();
// "I'd like cheesy scrambled eggs please"
bfastOrder("chocolate chip pancakes");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes please."
bfastOrder("grits");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes and grits please."
