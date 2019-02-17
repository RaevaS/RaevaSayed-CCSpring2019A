/*
"title" : "Wall Drawing #295 (1976)",
    "description": "Six white geometric figures (outlines) 
    superimposed on a black wall."
*/

void setup () {
 size (700,700);
  background (0);
  stroke (255);
  strokeWeight (7);
  noFill();
  triangle (350,0,0,525,700,525);
  quad(175,525/2,525,525/2,525,525,175,525);
  ellipse (350,393.75,350,262);
  line (175,393.75,525,393.75);
  line (350,0,350,525);
  arc (350,393.75,200,200,PI,TWO_PI); 
  rect (250,393.75,200,100);
 
  

}
