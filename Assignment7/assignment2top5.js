//Raeva Sayed Assignment 7
//Edit Assignment 3 to convert to p5.js (Assignment7)


//Iterate on last week's assignment with arrays and while/for loop 

//create global variable to be able to adjust the number of cubes
var numCubes = 7;

//Define container arrays for positions and speed
var posx = new Array(numCubes);
var posy = new Array(numCubes);
var speedX = new Array(numCubes);
var speedY = new Array(numCubes);


function setup (){
 //Setup background
  createCanvas (700,700);
  noStroke();
  background(0);
  
  //Establish the random starting positions 
  for (var i = 0; i < numCubes; i++){
  posx[i] = random (100, width - 100);
  posy[i] = random (100, height - 100);
  
  //Assign a random speed to the cubes
  speedX[i] = random (-4,4);
  speedY[i] = random (-4,4);
  }
 
}

function draw (){

background(0);
//set up conditionals for cubes
for (var i = 0; i < numCubes; i++) {
  //draw cubes at the randomized position set up earlier
  rect (posx[i], posy[i], 100, 100);
  //Move the cubes around
  posx[i] += speedX [i];
  posy[i] += speedY [i];

 //conditional for WIDTH taking varo account the dimensions of the cubes to 
 //make sure it is staying within the screen width
if (posx[i] > width - 100|| posx[i] < 0 ) {
    speedX[i] *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
  //conditional for HEIGHT taking varo account the dimensions of the cubes to 
 //make sure it is staying within the screen width
if (posy[i] > height - 100 || posy[i] < 0) {
    speedY[i] *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
  
}   
}

//User input - mouse pressed
//When the mouse is pressed the movement of the cubes should STOP - make speed = 0
function mousePressed(){
  for (var i = 0; i < numCubes; i++){
  speedX [i] = 0.0;
  speedY [i] = 0.0;
  }
  
  }
//When the mouse is released the movement of the cubes should CONTINUE - make speed back to random assigned speed
function mouseReleased (){
  for (var i = 0; i < numCubes; i++){
  speedX[i] = random (-4,4);
  speedY[i] = random (-4,4);
  }
  }