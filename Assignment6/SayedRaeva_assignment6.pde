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
  size (1200, 700);
  background(150);
  
}

void draw() {
  
  background(193,33,186);//refresh background
  
 //user input if key is pressed cat dissapears

 if (keyPressed == true) {
    p1.place = new ParticleV(mouseX, mouseY);
    p1.run();
    p1.addParticle(); 
    c1.drawCat();
 } else {
   c1.drawCat();
 }
 
   
  
  
}

  
  
