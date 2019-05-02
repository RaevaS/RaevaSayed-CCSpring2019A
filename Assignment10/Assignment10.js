/*
Assignment 10
Raeva Sayed
OBAMA CHANGING COLORS
*/

var file;
//var millisecond = millis();


//let processing handle images
let img;

colors = new Array("#1EFF00","#0000FF", "#FF0000", "#FAFF03");
still = true;


//use preload to make sure that large files like audio files have loaded
function preload() {
  file = loadSound("data/Bye.mp3");
}


function setup(){
  createCanvas (700, 700);
  frameRate(20);
  img = loadImage("data/obama.png");
}

function draw(){
  image (img,0,0);
  
  if (still){
    noTint();
    image (img, 360, 0);
    image (img, 0, 360);
    image (img, 360, 360);
  }
  else {
  tint (colors [0]);
  
  image (img, 360, 0);
  tint (colors [1] );
  
  image (img, 0, 360);
  tint (colors [2] );
        
  image (img, 360, 360);
  tint (colors [3] );
  }
  //if (file.isPlaying()){
    if(frameCount % 12 === 0){
      for (i = 0; i < colors.length; i++) {
      colors[i] = color(random(0,255), random(0,255), random(0,255));
    }
  }
  }  

//}

function keyPressed(){
  if (keyCode == 32){
    if (file.isPlaying()){
      file.pause();
    }
    else{
      still = false;
      file.play();
      }
    }
  }


