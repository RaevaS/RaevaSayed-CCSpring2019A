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
console.log(p1)

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
   console.log(p1)
  }
  else{
    c1.drawCat();
  }
  
}

//user input if key is pressed cat dissapears
function keyPressed() {
  pressing = true;
  //this.catlife -= 5.5;
} 
function keyReleased () {
  pressing = false;
  //this.catlife = 255;
 
}
