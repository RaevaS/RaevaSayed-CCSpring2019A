/*
Assignment 6
Raeva Sayed
cat and particles
*/

//define cat
Cat c1 = new Cat();
//define particle
ParticleSystem p1 = new ParticleSystem();

void setup () {
  //create canvas
  size (1200, 700);
  background(150);
  
}

void draw() {
  
  background(193,33,186);//refresh background
  
 //user input if key is pressed cat dissapears
 if (keyPressed == true) {
   //when the key is pressed draw the particles in the cat colors to make it look
   //like the cat is coming apart
   //call particle of particle sysem for place, run, addParticle
    p1.place = new ParticleV(mouseX, mouseY);
    p1.run();
    p1.addParticle(); 
    
 } else {
   //if key is not pressed, draw the cat
   c1.drawCat();
 }
  
  
}

  
  
