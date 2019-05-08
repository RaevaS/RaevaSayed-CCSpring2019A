/*
Raeva Sayed
Final
Recycling Game.
*/

import processing.sound.*;
SoundFile music;
boolean yellow = true;
boolean organic = true;
PImage[] myFruitImagesArray = new PImage[5];
PImage[] myPlasticImagesArray = new PImage[5];
int score = 0;


//Classes for bins, objects and object system
Bins b = new Bins(width/2,550,100,159);
Objects[] obj = new Objects[5];



void setup() {
  size(700,700);
  background(255);
  b.redbin = loadImage("Red.png");
  b.yellowbin = loadImage("Yellow.png");
  b.bg = loadImage("Background.png");
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
    //if thet number is greater than 0.5, call the object constructor, passing in a fruit image and set organic to true
    if (roll > 0.5){
      organic = true;
      obj[i] = new Objects(myFruitImagesArray[i], true, random(width),0, myFruitImagesArray[i].width, myFruitImagesArray[i].height);
    }
    //else call the object constructor, passing in a plastic image and set organic to false
    else {
      organic = false;
      obj[i] = new Objects(myPlasticImagesArray[i], false,random(width),0, myPlasticImagesArray[i].width, myPlasticImagesArray[i].height);
  }
  }
  
 
}

void draw() {
  
  b.drawBins();
 
  for (int i = 0; i < obj.length; i++){
    obj[i].showObjects();
    obj[i].drawObjects();
   
    if (obj[i].objectposy > height) {
       float roll = random(0,1);
      if (roll > 0.5){
      organic = true;
      obj[i] = new Objects(myFruitImagesArray[i], true, random(width),0, myFruitImagesArray[i].width, myFruitImagesArray[i].height);
      }
    //else call the object constructor, passing in a plastic image and set organic to false
       else {
      organic = false;
      obj[i] = new Objects(myPlasticImagesArray[i], false,random(width),0, myPlasticImagesArray[i].width, myPlasticImagesArray[i].height);
      }
    }
    
    textSize(32);
    text("score:"+score, 50, 50); 
    //if its yellow and organic
    if(b.collision(obj[i]));{
      if (yellow && organic){
          score +=1;
      }
      if (yellow && organic == false){
        score -=1;
      }
      if (yellow == false && organic == true){
        score -=1;
      }
      if (yellow == false && organic == false){
        score += 1;
      }
   }
  }
}
  
  
  

void keyPressed(){
  println(keyCode);
  if (keyCode == 16){
    b.yellow = !b.yellow;
    
  }
  
  if (keyCode == 32){
    //if its playing pause
    if (music.isPlaying()){
      music.stop();
    }
    else{
      music.play();
      }
    }
}

  
