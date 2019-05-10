//game screen
void gameStart() {
  PImage background;
  background = loadImage("pink.jpg");
  background (background);
  textSize(50);
  noStroke();
  fill(0,120,0);
  text("S to start", 200, 350);
  text("C for controls", 200, 410);
  text("I to learn more", 200, 470);
}

//play game 
void playGame() {
  //bin method to draw bins
  b.drawBins();

  for (int i = 0; i < obj.length; i++) {
    //object method to show objects
    obj[i].showObjects();
    //object method to move objects (make them fall)
    obj[i].moveObjects();

    if (obj[i].y > height) {
      float roll = random(0, 1);
      //if roll is greater than 0.5, so the first of two options - call object constructor and make image a fruit image and organic to true
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

    //Score text
    textSize(32);
    fill(255);
    text("score:"+score, 50, 50); 

    //If bins collides with objects then
    if (  b.collision( obj[i] )  ) {
      //if bin is yellow and it is a fruit - inc score
      if (b.yellow && obj[i].organic) {
        score +=1;
      }
      //if bin is yellow collides with plastic - dec score 
      if (b.yellow && obj[i].organic == false) {
        score -=1;
      }
      //if bin is red and collides with fruit - dec score 
      if (b.yellow == false && obj[i].organic == true) {
        score -=1;
      }
      //if bin is red and collides with plastic - dec score 
      if (b.yellow == false && obj[i].organic == false) {
        score += 1;
      }
      //reset position - to top as soon as collides, looks like it disappears when it touches bin
      obj[i].y = height;
      //set gameScreen to lose if scoer below zero
      if (score < 0) {
        gameScreen = 2;
      }
    }
  }
}

//lose screen
void loseScreen() {
  PImage background;
  background = loadImage("pink.jpg");
  background (background);
  textSize(60);
  text("YOU LOSE!", 200, 350);
}

//info screen
void infoScreen() {
  PImage background;
  background = loadImage("pink.jpg");
  background (background);
  textSize(20);
  text("Benefits of Recycling:", 50, 200);
  text("Reduces the amount of waste sent to landfills and incinerators", 50, 230);
  text("Conserves natural resources such as timber, water and minerals", 50, 260);
  text("Increases economic security by tapping a domestic source of", 50, 290);
  text("materials", 50, 320);
  text("Prevents pollution by reducing the need to collect new raw", 50, 350);
  text("materials", 50, 380);
  text("Saves energy", 50, 410);
  text("Supports American manufacturing and conserves" , 50, 440);
  text("valuable resources",50,470);
  text("Helps create jobs in the recycling and manufacturing industries", 50, 500);
  text("in the United States", 50, 530);
  text("I to return to start screen", 50, 560);
}

//control screen
void controlScreen() {
  PImage background;
  background = loadImage("pink.jpg");
  background (background);
  textSize(20);
  text("Use mouse to move recycling bin", 100, 250);
  text("Use the SHIFT key to toggle between RED and YELLOW bins", 100, 280);
  text("FRUITS (organic materials) go in the YELLOW BIN", 100, 310);
  text("PLASTICS (plastic materials) go in the RED BIN", 100, 340);
  text("Use the SPACE key to toggle music on and off", 100, 370);
  text("If score is less that 0 you lose!", 100, 400);
  text("C to return to start screen", 100, 430);
  
}
