class Falling {
  //fields
  public float posx = random(width);
  public float posy = random(-100, -50);
  public float yspeed = random(0,4);
  
 //constructors
 //blank constructor
  public Falling () {
  }
  
  //methods
  //function to draw triangles 
  public void drawFalling() {
    posy += yspeed;
    
    if(posy > height) {
      posy = random(-100,-50);
    }
  }
  //methods
  //show triangles falling
  public void showFalling() {
    
    stroke(0);
    fill(2,68,152);
    triangle(posx,posy, posx+30, posy, posx+15, posy+30);
    
  }
  
}
