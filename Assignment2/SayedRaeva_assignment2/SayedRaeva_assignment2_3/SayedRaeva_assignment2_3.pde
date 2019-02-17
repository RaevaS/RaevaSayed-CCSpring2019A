//Raeva Sayed Assignment2 part 3

float posx = 0;
float posy = 0;
float speedX = 2.8;
float speedY = 2.3;
int directionx = 1;
int directiony = 1;


void setup (){
  //Setup backgroun
  size (600,600);
  noStroke();
  background(0);
 
}

void draw (){

background(0);
//speed and direction of x and y
posx = posx + (speedX * directionx);
posy = posy + (speedY * directiony);

//conditionals and boudaries for cube
if (posx > width-90 || posx < 0 ) {
    directionx *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
if (posy > height-90 || posy < 0) {
    directiony *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
  
  //create cube
    rect (posx, posy, 90, 90, 7);
    
}

//User input - mouse pressed
void mousePressed(){
  speedX = 0;
  speedY = 0;
  
  }

void mouseReleased (){
  speedX = 2.8;
  speedY = 2.3;
  
  }

  
