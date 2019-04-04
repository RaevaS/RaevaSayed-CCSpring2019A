/*
Assignment 5
Raeva Sayed
Cheshire Cats
*/

/*
1. Draw multiple pulsing cats
3. Move the cats
*/

//define global variables to be able to adjust the cat's location and speed

float posx = width/2;
float posy = height/2;
float speedx = random(0,2);
float speedy = random(0,2);

void setup () {
  size (1200, 700);
  background(150);
  
}


void draw () {
  background(193,33,186); //refresh background
  
  
  drawMultipleCats(width/2,height/2, 0.5, 0); //function to draw first cat
  moveCats(); //make the cats move
  
  //draw 50 cats
  for (int i = 0; i < 50; i ++) {
    drawMultipleCats (random(width), random(height), random(-0.5,0.5), 0);
  }
  
  
}

//function to draw cats
void drawMultipleCats(float x, float y, float s, float angle) {
//translate cats to random size, angle, position
  pushMatrix();
  translate(x,y);
  rotate(angle);
  scale(s);
  
  //begin drawing
  noStroke();
  //face
  fill(56,27,227);
  ellipse(posx, posy, 200, 200);
  //ears
  triangle(posx-25,posy-90,posx-100,posy-120,posx-75,posy-20);
  triangle(posx+30,posy-90,posx+100,posy-120,posx+80,posy-20);
  //eyes
  fill(255,240,75);
  ellipse(posx-40,posy-25, 40, 40);
  ellipse(posx+40,posy-25,40,40);
  //eyes 2
  fill(0);
  ellipse(posx-37, posy-25, 10,10);
  ellipse(posx+43, posy-25, 10,10);
  //nose
  fill(252,168,251);
  triangle(posx-20,posy+25,posx+20,posy+25,posx,posy+50); 
  
  popMatrix();
  

}
//function to move the cats
void moveCats() {
  posx += speedx;
  posy += speedy;
}

  
