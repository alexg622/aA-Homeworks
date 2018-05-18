const readline = require('readline');

const reader = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

reader.question("Would you like tea?", function(answer) {
  console.log(answer)
  reader.question("Would you like biscuits\n", function(answer2) {
    console.log(answer2)
    reader.close()
  })
})
