class Fireball {
  
  //fields
  public float fbposx = 600;
  public float FireballSpeed = 3;
  
  //constructors
  //blank constructor
  public Fireball () {
  }
  //methods
  //function to draw ball () 
  public void drawFireball() {
    
    ellipseMode(CENTER);
    noStroke();
    fill(160,29,29);
    ellipse(fbposx, 660, 70, 70);
    
    //set up constraints for the edges 
    if (fbposx >= width) {
      fbposx = constrain(fbposx, 0, 1200);
    }
    if (fbposx < width) {
      fbposx = constrain(fbposx, 0, 1200);
    }
    
    
  }
  
  //move ball left and right based on key
  public void keyPressed(){
     if (key == CODED) {
      if (keyCode == LEFT){
       fbposx -= FireballSpeed; 
      }
      if (keyCode == RIGHT) {
       fbposx += FireballSpeed;
      }
    }  
  }
}
