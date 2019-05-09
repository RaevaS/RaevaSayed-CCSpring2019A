/*
Raeva Sayed
Final
Recycling Game.
*/
//import sound for music
import processing.sound.*;
SoundFile music;
//booleans for bins and organic state
boolean yellow = true;
boolean organic = true;
//Fruit and Plastic image arrays
PImage[] myFruitImagesArray = new PImage[5];
PImage[] myPlasticImagesArray = new PImage[5];
//score var
int score = 0;

//Classes for bins, objects and object system
Bins b = new Bins(width/2,550,100,159);
Objects[] obj = new Objects[5];


void setup() {
  size(700,700);
  background(255);
  //load bin images
  b.redbin = loadImage("Red.png");
  b.yellowbin = loadImage("Yellow.png");
  //load background image
  b.bg = loadImage("Background.png");
  //load music
  music = new SoundFile(this,"music.wav");
  
  //populate fruit images array
  for(int i=0; i<myFruitImagesArray.length;i++){
  myFruitImagesArray[i] = loadImage("Fruit"+i+".png");
  }
  //populate plastic images array
  for(int i=0; i<myPlasticImagesArray.length;i++){
  myPlasticImagesArray[i] = loadImage("Plastic"+i+".png");
  }
  
  //populate the objects array
  for(int i = 0; i < obj.length; i++){
    //roll a random number between 0,1
    float roll = random(0,1);
    //if the number is greater than 0.5, call the object constructor, passing in a fruit image and set organic to true
    if (roll > 0.5){
      organic = true;
      obj[i] = new Objects(myFruitImagesArray[i], true, random(width),0,myFruitImagesArray[i].width, myFruitImagesArray[i].height);
    }
    //else call the object constructor, passing in a plastic image and set organic to false
    else {
      organic = false;
      obj[i] = new Objects(myPlasticImagesArray[i], false, random(width),0,myPlasticImagesArray[i].width, myPlasticImagesArray[i].height);
  }
  }
  
 
}

void draw() {
  //bin method to draw bins
  b.drawBins();
 
  for (int i = 0; i < obj.length; i++){
    //object method to show objects
    obj[i].showObjects();
    //object method to move objects (make them fall)
    obj[i].moveObjects();
   
    if(obj[i].y > height) {
       float roll = random(0,1);
       //if roll is greater than 0.5, so the first of two options - call object constructor and make image a fruit image and organic to true
      if (roll > 0.5){
      organic = true;
      obj[i] = new Objects(myFruitImagesArray[i], true, random(width),0,myFruitImagesArray[i].width, myFruitImagesArray[i].height);
      }
    //else call the object constructor, passing in a plastic image and set organic to false
       else {
      organic = false;
      obj[i] = new Objects(myPlasticImagesArray[i], false, random(width),0,myPlasticImagesArray[i].width, myPlasticImagesArray[i].height);
      }
    }
    
    //Score text
    textSize(32);
    text("score:"+score, 50, 50); 
    
    //If bins collides with objects then
    if(  b.collision( obj[i] )  ){
      //if bin is yellow and it is a fruit - inc score
      if (b.yellow && obj[i].organic){
        score +=1;
      }
      //if bin is yellow collides with plastic - dec score 
      if (b.yellow && obj[i].organic == false){
        score -=1;
      }
       //if bin is red and collides with fruit - dec score 
      if (b.yellow == false && obj[i].organic == true){
        score -=1;
      }
      //if bin is red and collides with plastic - dec score 
      if (b.yellow == false && obj[i].organic == false){
        score += 1;
      }
      //reset position - to top as soon as collides, looks like it disappears when it touches bin
      obj[i].y = height;

   }
   
  }
}
  
  
  

void keyPressed(){
  //Shift key changes bin image
  if (keyCode == 16){
    b.yellow = !b.yellow;
    
  }
  
  if (keyCode == 32){
    //if its playing and button pressed - pause
    if (music.isPlaying()){
      music.stop();
    }
     //otherwise play
    else{
      music.play();
      }
    }
    
}
