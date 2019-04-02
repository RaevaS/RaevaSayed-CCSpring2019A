/***********"title" : "Wall Drawing #11 (1969)"*************************
    "description" : "A wall divided horizontally and vertically into 
    four equal parts. Within each part, three of the four kinds of lines 
    are superimposed."
*************************************************************************/
float lim = 400; //limit for lines
float xDim = 100; //x-dimensions to divide width by
float yDim = 100; //y-dimensions to equally divide height by


void setup () {
  //background size
  size (700,700);
  //background color
  background (0);
  //line color, stroke and strokeWeight
  fill (255);
  stroke (255);
  strokeWeight (10);
  //break canvas up into 4 parts
  line (width/2, 0, width/2, height);
  line (0, height/2, width, height/2);

}

void draw () {
  //divide spacing by dimensions for equally spaced lines
  float xspacing = width/xDim;
  float yspacing = height/yDim;

  //for loop set up x and y val, x and y conditionals, increment the spacing
   for (float x = 0, y = 0; x < width || y > height || y < height; y += yspacing, x += xspacing){
   //set stroke weight
   strokeWeight (1);
   //vertical ines
     line (x, 0, x, height);
     //lines from top to right corner on right side half
     line (width/2, y, width, height);
     //lines from bottom middle to across the top
     line (x, 0, width/2, height);
     //JUST ADDED 4.2.18 lines from across the middle to bottom right
     line (x, 350, height, 700);

  } 
   for (float y = 0; y < height; y += yspacing){
   strokeWeight (1);
   //horizontal lines on right side
      line (width/2, y, width, y);
   //from midpoint on right side to across the entire right side
      line (350, 350, height, y);
      
   }
   
   
     
   

}  
  
