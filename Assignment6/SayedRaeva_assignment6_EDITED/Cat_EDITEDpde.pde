
class Cat {
  
  //fields
  public float catlife = 255;
  
  //constructors
  //blank constructor
  public Cat() {
  }
  
  //methods
  //function to draw cat
  public void drawCat() {
  //if the key is pressed make the value of catlife decrease so it disappears 
  if (keyPressed == true) {
    catlife -= 5.5;
    //otherwise remain visible
  }else{
    catlife = 255;
  }
    
  //drawing the actual cat here
  //draw the cat wherever mapped mouseX and Y are so wherever the mouse is
  float posx = map(mouseX+350,0, width, 0, height);
  float posy = map(mouseY+350,0, width, 0, height);
  //begin drawing
  noStroke();
  //face
  ellipseMode(CENTER);
  fill(56,27,227, catlife);
  ellipse(posx, posy, 200, 200);
  //ears
  triangle(posx-25,posy-90,posx-100,posy-120,posx-75,posy-20);
  triangle(posx+30,posy-90,posx+100,posy-120,posx+80,posy-20);
  //eyes
  fill(255,240,75,catlife);
  ellipse(posx-40,posy-25, 40, 40);
  ellipse(posx+40,posy-25,40,40);
  //eyes 2
  fill(0, catlife);
  ellipse(posx-37, posy-25, 10,10);
  ellipse(posx+43, posy-25, 10,10);
  //nose
  fill(252,168,251,catlife);
  triangle(posx-20,posy+25,posx+20,posy+25,posx,posy+50); 
 
}

}
