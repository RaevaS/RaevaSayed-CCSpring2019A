/*
Assignment 10
Raeva Sayed
OBAMA CHANGING COLORS
*/

var file;
//var millisecond = millis();


//let processing handle images
let img;

//array of colors to loop through for image tint
colors = new Array("#1EFF00","#0000FF", "#FF0000", "#FAFF03");
//boolean to set to true to start showing images
still = true;


//use preload to make sure that large files like audio files have loaded
function preload() {
  file = loadSound("data/Bye.mp3");
}


function setup(){
  createCanvas (700, 700);
  //frame rate for
  frameRate(1.38);
  //load image to use
  img = loadImage("data/obama.png");
}

function draw(){
  
  
  if (still){
    //images without tint
    noTint();
    //allfour quandrants
    image (img,0,0);
    image (img, 360, 0);
    image (img, 0, 360);
    image (img, 360, 360);
  }
  else {
  //index of color array for each image
  image (img,0,0);
  tint (colors [0]);
  
  image (img, 360, 0);
  tint (colors [1] );
  
  image (img, 0, 360);
  tint (colors [2] );
        
  image (img, 360, 360);
  tint (colors [3] );
  }
  //for loop to loop through the colors at random
    for (i = 0; i < colors.length; i++) {
    colors[i] = color(random(0,255), random(0,255), random(0,255));
    }
  }
  

  //spacebar to start and pause the music
function keyPressed(){
  //spacebar ascii
  if (keyCode == 32){
    //if its playing pause
    if (file.isPlaying()){
      file.pause();
    }
    else{
      //play and set still to false
      still = false;
      file.play();
      }
    }
  }


