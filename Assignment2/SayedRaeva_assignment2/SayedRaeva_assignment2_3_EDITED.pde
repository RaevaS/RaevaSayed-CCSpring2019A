//Raeva Sayed Assignment2 part 3

//global variables of position, speed and direction 
float posx = 0;
float posy = 0;
float speedX = 2.8;
float speedY = 2.3;
int directionx = 1;
int directiony = 1;


void setup (){
  //Setup background
  size (600,600);
  noStroke();
  //black background
  background(0);
 
}

void draw (){

background(0);
//speed and direction of x and y, position is position + (speed * direction)
posx = posx + (speedX * directionx);
posy = posy + (speedY * directiony);

//conditionals and boudaries for cube
//checking collision
if (posx > width-90 || posx < 0 ) {
  //reverse direction if it bounces off the edge
    directionx *= -1;
    //makecube a new color when it bounces off the edge
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
if (posy > height-90 || posy < 0) {
  //reverse direction if it bounces off the edge
    directiony *= -1;
    //makecube a new color when it bounces off the edge
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
  
  //create cube
    rect (posx, posy, 90, 90, 7);
    
}

//User input - mouse pressed
void mousePressed(){
  //make the cube stop if the mouse is pressed
  speedX = 0;
  speedY = 0;
  
  }

void mouseReleased (){
  //make the cube resume the speed when released
  speedX = 2.8;
  speedY = 2.3;
  
  }
  
//JUST ADDED 4.2.18 increase the speed when pressed by any key
void keyPressed (){
  speedX+=1;
  speedY+=1;
  //if the speed is greater than 7 make it go back to original speed
    if (speedX > 20.0 || speedY > 20.0){
      speedX = 2.8;
      speedY = 2.8;
    }
    else {
     speedX+=1;
     speedY+=1;
    }
}

  
