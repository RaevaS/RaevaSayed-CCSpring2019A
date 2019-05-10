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
//gameScreen 
int gameScreen = 0;

//controlscreen and info screen booleans
boolean controlScreenOn = false;
boolean infoScreenOn = false;

//Classes for bins, objects and object system
Bins b = new Bins(width/2, 550, 100, 159);
Objects[] obj = new Objects[5];


void setup() {
  size(700, 700);
  background(255);

  //load bin images
  b.redbin = loadImage("Red.png");
  b.yellowbin = loadImage("Yellow.png");
  //load background image
  b.bg = loadImage("Background.png");
  //load music
  music = new SoundFile(this, "music.wav");

  //populate fruit images array
  for (int i=0; i<myFruitImagesArray.length; i++) {
    myFruitImagesArray[i] = loadImage("Fruit"+i+".png");
  }
  //populate plastic images array
  for (int i=0; i<myPlasticImagesArray.length; i++) {
    myPlasticImagesArray[i] = loadImage("Plastic"+i+".png");
  }

  //populate the objects array
  for (int i = 0; i < obj.length; i++) {
    //roll a random number between 0,1
    float roll = random(0, 1);
    //if the number is greater than 0.5, call the object constructor, passing in a fruit image and set organic to true
    if (roll > 0.5) {
      organic = true;
      obj[i] = new Objects(myFruitImagesArray[i], true, random(width), 0, myFruitImagesArray[i].width, myFruitImagesArray[i].height);
    }
    //else call the object constructor, passing in a plastic image and set organic to false
    else {
      organic = false;
      obj[i] = new Objects(myPlasticImagesArray[i], false, random(width), 0, myPlasticImagesArray[i].width, myPlasticImagesArray[i].height);
    }
  }
}

void draw() {

  //if gameScreen 0 --> initial screen
  if (gameScreen == 0) {
    gameStart();
  //if gameScreen 1 - start game
  } else if (gameScreen == 1) {
    playGame();
  //if gameScreen 2 - lose screen 
  } else if (gameScreen == 2) {
    loseScreen();
  //if gameScreen 3 - info screen 
  } else if (gameScreen == 3) {
    infoScreen();
  //if gameScreen 4 - control screen 
  } else if (gameScreen == 4) {
    controlScreen();
  }
}





void keyPressed() {
  //Shift key changes bin image
  if (keyCode == 16) { //SHIFT
    b.yellow = !b.yellow;
  }
  if (keyCode == 73) { // I
  //if i then show info screen
    if (infoScreenOn == false) {
      gameScreen = 3;
      infoScreenOn = true;
   //else return to start screen
    } else if (infoScreenOn == true) {
      gameScreen = 0;
      infoScreenOn = false;
    }
  }
  if (keyCode == 67) { //C
  //if c then show control screen
    if (controlScreenOn == false) {
      gameScreen = 4;
      controlScreenOn = true;
  //else return to start screen
    } else if (controlScreenOn == true) {
      gameScreen = 0;
      controlScreenOn = false;
    }
    
  }
  if (keyCode == 83) { //S
    gameScreen = 1;
  }

  if (keyCode == 32) { //SPACE
    //if its playing and button pressed - pause
    if (music.isPlaying()) {
      music.stop();
    }
    //otherwise play
    else {
      music.play();
    }
  }
}
