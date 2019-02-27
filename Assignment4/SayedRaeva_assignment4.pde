//Raeva Sayed Assignment 4

//Idea: rainbow scales, like a fish

//create global variable to increment translation for motion
float translate_inc = 360;
//create global variable for framecount to easily change number of frames
float frame_count = 8;

//setup with, background, noStroke, HSB color mode and ellipse center mode
void setup() {
  size(700, 700);
  background(255);
  noStroke();
  colorMode(HSB,360,360,360);
  ellipseMode(CENTER);
}

//Create scales in draw (repeat the motion continously)
void draw(){
//set up conditional with frameCount to repeat the frames but mod frame_count to change number of frames
  if (frameCount % frame_count == 0) {
//setup fill as random colors
    fill(random(360), random(360), random(360)); 
//start transformation with location translation and rotation
    pushMatrix();
//translate position of circles and increment by 1
    translate (translate_inc-=1, translate_inc-=1);
//rotate the number of frames by 360 for full rotation
    rotate(radians(frameCount%360));
//draw ellipse
    ellipse(width/2, height/2, 250, 250);
//pop 
    popMatrix();
}
}
