/***********"title" : "Wall Drawing #11 (1969)"*************************
    "description" : "A wall divided horizontally and vertically into 
    four equal parts. Within each part, three of the four kinds of lines 
    are superimposed."
*************************************************************************/
float lim = 400; //limit for lines
float xDim = 100;
float yDim = 100;


void setup () {
  size (700,700);
  background (0);
  fill (255);
  stroke (255);
  strokeWeight (10);
  line (width/2, 0, width/2, height);
  line (0, height/2, width, height/2);

}

void draw () {
  float xspacing = width/xDim;
  float yspacing = height/yDim;

  
   for (float x = 0, y = 0; x < width || y > height || y < height; y += yspacing, x += xspacing){
   strokeWeight (1);
     line (x, 0, x, height);
     line (width/2, y, width, height);
     line (x, 0, width/2, height);
     

  } 
   for (float y = 0; y < height; y += yspacing){
   strokeWeight (1);
      line (width/2, y, width, y);
      line (350, 350, width, y);
      
   }
   

}  
  
