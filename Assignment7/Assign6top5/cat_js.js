/*
Assignment 6
Raeva Sayed
cat and particles
*/

//define cat
var c1 = new Cat();
//define particle
var p1 = new ParticleSystem();
var pressing = false;

function setup () {
  //create canvas
  createCanvas (1200, 700);
  background(150);
  
}

function draw() {
  
  background(193,33,186);//refresh background
  p1.place = new ParticleV(mouseX, mouseY);
  if (pressing){
   p1.run();
   p1.addParticle(); 
  }
  else{
    c1.drawCat();
  }
  
}

//user input if key is pressed cat dissapears
function keyPressed() {
  pressing = true;
  
} 
function keyReleased () {
  pressing = false;

 
}
