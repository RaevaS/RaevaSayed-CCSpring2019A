/*
"title" : "Wall Drawing #295 (1976)",
    "description": "Six white geometric figures (outlines) 
    superimposed on a black wall."
*/
//idea: kind of like harry potter deathly hallows

//ALL COMMENTS JUST ADDED 4.2.18
void setup () {
  //canvas size
 size (700,700);
 //black background color
  background (0);
  //white lines
  stroke (255);
  //stroke weight
  strokeWeight (7);
  //no fill
  noFill();
  //large triangle
  triangle (350,0,0,525,700,525);
  //large square touching triangle
  quad(175,525/2,525,525/2,525,525,175,525);
  //circle inside of square
  ellipse (350,393.75,350,262);
  //horizontal line inside circle
  line (175,393.75,525,393.75);
  //vertical line down triangle
  line (350,0,350,525);
  //arc inside circle on top of rectangle
  arc (350,393.75,200,200,PI,TWO_PI); 
  //rectangle under the arc
  rect (250,393.75,200,100);
  

}
