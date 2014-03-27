// GPS 1.2 - JavaScript

// YOUR FULL NAMES:
//  1. Greg Knudsen
//  2. ...just me and teacher (Rich Vogt)


// 1. "YOU SIGNED... WHO?!"

kevinSpacey = {	// I had originally named these 'client1', 'client2', etc... Rich had suggested naming these clients 'kevinSpacey', etc... definitely a better idea
    name: "Kevin Spacey",
    age: 55,
    quote: "I rule!"
  }

// 2. "Here they Come!"

adamSandler = {
  name: "Adam Sandler",
  age: 47,
  quote: "That's your home! Are you too good for your home?!"
}  

kristenBell = {
  name: "Kristen Bell",
  age: 33,
  quote: "Do you wanna build a snowman?"
}
  
jimCarrey = {
  name: "Jim Carrey",
  age: 52,
  quote: "...So you're telling me there's a chance? YEAH!"
}

// 3. "TIME IS MONEY!"

var clients = [kevinSpacey, adamSandler, kristenBell, jimCarrey]; // we decided to create an array of all the clients

function Client(name, age, quote) {
  this.name = name;
  this.age = age;
  this.quote = quote;
  clients.push(this); // added this for more automation
 }

//YOUR CODE HERE!

var shooterMcGavin = new Client("Shooter McGavin", 48, "Just stay out of my way... or you'll pay. Listen to what I say.");
shooterMcGavin.constructor === Client;
shooterMcGavin.age === 48;
shooterMcGavin.quote === "Just stay out of my way... or you'll pay. Listen to what I say.";

// clients[4] = shooterMcGavin;

// console.log(clients);

// 4. "SHOW 'EM OFF!" 

// this is original loop that Rich came up with

// for(var i=0; i<clients.length; i++){
//     console.log(clients[i].name + " " + clients[i].age + " " + clients[i].quote);
// }

// I just added a few things to make it a little more readable.

for(var i=0; i<clients.length; i++){
    console.log(clients[i].name + ", " + clients[i].age + ", \t" + '"'+ clients[i].quote +'"');
}

// ** BONUS **
