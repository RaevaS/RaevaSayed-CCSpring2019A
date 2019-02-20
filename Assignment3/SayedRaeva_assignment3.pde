//Raeva Sayed Assignment2 part 3
int numCubes = 5;

//deine container arrays for positions and speed
float [] posx = new float [numCubes];
float [] posy = new float [numCubes];
float [] speedX = new float [numCubes];
float [] speedY = new float [numCubes];


void setup (){
  //Setup backgroun
  size (700,700);
  noStroke();
  background(0);
  
  for (int i = 0; i < numCubes; i++){
  posx[i] = random (100, width - 100);
  posy[i] = random (100, height - 100);
  
  speedX[i] = random (-4,4);
  speedY[i] = random (-4,4);
  }
 
}

void draw (){

background(0);
//populate array
//speed and direction of x and y

//posx[i] = posx + (speedX * directionx);
//posy[i] = posy + (speedY * directiony);

//conditionals and boudaries for cube
for (int i = 0; i < numCubes; i++) {
  //draw cubes
  rect (posx[i], posy[i], 100, 100);
  posx[i] += speedX [i];
  posy[i] += speedY [i];
  
if (posx[i] > width - 100|| posx[i] < 0 ) {
    speedX[i] *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
if (posy[i] > height - 100 || posy[i] < 0) {
    speedY[i] *= -1;
    fill(random(100, 255),random(100, 255), random(100, 255), random(100, 255));
  }
  
  //move cubes
    posx[i] += speedX[i];
    posy[i] += speedY[i];
}
    
}

//User input - mouse pressed
void mousePressed(){
  for (int i = 0; i < numCubes; i++){
  speedX [i] = 0.0;
  speedY [i] = 0.0;
  }
  
  }

void mouseReleased (){
  for (int i = 0; i < numCubes; i++){
  speedX[i] = random (-4,4);
  speedY[i] = random (-4,4);
  }
  }
  

  
