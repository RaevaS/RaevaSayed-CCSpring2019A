class Cat {
  //constructor
  constructor(catlife = 255){
    this.catlife = catlife
  }
  
  
  //constructors
  //blank constructor
  Cat() {
  }
  
  //methods
  //function to draw cat
  drawCat(posx = map(mouseX+350,0, width, 0, height),posy = map(mouseY+350,0, width, 0, height) ) {
    this.posx = posx
    this.posy = posy
  //if the key is pressed make the value of catlife decrease so it disappears 
  function keyPressed() {
    this.catlife -= 5.5;
  }
  function keyReleased (){
    this.catlife = 255;
    }
    
    
  //drawing the actual cat here
  //begin drawing
  noStroke();
  //face
  ellipseMode(CENTER);
  fill(56,27,227, this.catlife);
  ellipse(this.posx, this.posy, 200, 200);
  //ears
  triangle(this.posx-25,this.posy-90,this.posx-100,this.posy-120,this.posx-75,this.posy-20);
  triangle(this.posx+30,this.posy-90,this.posx+100,this.posy-120,this.posx+80,this.posy-20);
  //eyes
  fill(255,240,75,this.catlife);
  ellipse(this.posx-40,this.posy-25, 40, 40);
  ellipse(this.posx+40,this.posy-25,40,40);
  //eyes 2
  fill(0, this.catlife);
  ellipse(this.posx-37, this.posy-25, 10,10);
  ellipse(this.posx+43, this.posy-25, 10,10);
  //nose
  fill(252,168,251,this.catlife);
  triangle(this.posx-20,this.posy+25,this.posx+20,this.posy+25,this.posx,this.posy+50); 
 
}

}
