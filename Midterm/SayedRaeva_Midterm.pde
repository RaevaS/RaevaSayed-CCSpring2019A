/*
Raeva Sayed
Midterm 
Fireball Game.
*/

//Classes Fireball, Falling Triangles and Particle System
Fireball f1 = new Fireball ();
Falling[] fall = new Falling[20]; //array of triangles
ParticleSystem p1 = new ParticleSystem();

//Life bar variable that changes when Triangle touches the ball
public float hurt = 293;


void setup () {
  size(1200, 700);
  background(150);
  //loop the triangles that are falling, increment them
  for (int i = 0; i <fall.length; i++) {
    fall[i] = new Falling();
  }
  
}

void draw() {
  //refresh background
  background (173,209,255);
  //draw function that creates LifeBar
  drawLife();
  //show the ball
  f1.drawFireball(); 
  //show particles if the up arrow is pressed
  if (key == CODED) {
   if (keyCode == UP){
     p1.place = new ParticleV(f1.fbposx, 660);
     p1.run();
     p1.addParticle();
     }
  //Move to the left or right dependant on what key is pressed
  f1.keyPressed();
  //add triangles and show them and draw them falling downward
  for (int i = 0; i <fall.length; i++) {
    fall[i].showFalling();
    fall[i].drawFalling();
    //if the triangle touches the ball decrease the lifebar
    if(dist(fall[i].posx, fall[i].posy, f1.fbposx, 660) < (70)){
      hurt -= 1;
    }
    /********* REMOVE THE TRIANGLE THAT COMES IN CONTACT WITH THE FIRE*****
    if (dist(fall[i].posx, fall[i].posy, f1.fbposx, 660) < (*xpos of particle, ypos of particle**)){
      Falling[] fall -= i;
    }
    */
    
       
    //function gameOvethe lifebar dips below 0
  gameOver();
    }
  }
}

//function to draw life bar
void drawLife(){
  noStroke();
  fill(0);
  rect(50,50,300,20,7);
  fill(255, 178,245);
  //decrease the life bar by how much the ball is "hurt"
  rect(53,53,hurt,15,5);
  
}

//function for when the lifebar goes below zero --> show new background and game over text 
void gameOver() {
  if(hurt<0) {
    background(2,68,152);
    textSize(100);
    fill(255);
    text("Game Over", 350, 350);
    
  }
}
