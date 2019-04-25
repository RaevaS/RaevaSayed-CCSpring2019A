/* Raeva Sayed
Assignment 9 Data Driven Sketch, Local file data
*/

//Table class for CSV file
Table dognames;
//empty global string to add names to
String name = "";
//global var counters 
int dDog = 0;
int oDog = 0;
int gDog = 0;
    
void setup(){
  
  //size and background
  size (700,700);
  background(40,166,184);
  
  //load csv file
  dognames = loadTable("Dog_Names.csv", "header"); //document and add header option
  //row count for table 
  int rowCount = dognames.getRowCount();
  
  //for loop to get the names
  for(int i = 0; i < rowCount; i++){
    TableRow row = dognames.getRow(i); 
    
    //assign each name to variable name
    name = row.getString("DogName");
    
  //if statement that indexes the name for the first letter
  if (name.charAt(0) == 'D'){ //first letter == D?
  //increment variable by one for each dog that has first letter as D
    dDog += 1;
  }
  
  if (name.charAt(0) == 'O') { //first letter == O?
  //increment variable by one for each dog that has first letter as O
    oDog += 1;
    
  }
  
  if (name.charAt(0) == 'G') { //first letter == G?
  //increment variable by one for each dog that has first letter as G
    gDog += 1;
    
  }
  
  }
  //Visualization:
  
  //Data Visualization Title
  textSize(20);
  text("Number of Good Boys and Girls whose names start with 'D' 'O' 'G'", 20,50);
  
  //pink bars that visually show the number of dogs
  fill(252,212,232);
  rect(20,100,dDog*3,100); //dogs that start with D
  rect(20,300,oDog*3,100); //dogs that start with O
  rect(20,500,gDog*3,100); //dogs that start with G
  
  //Text for D
  fill(255);
  textSize(100);
  text("D", (dDog*3)/2, 185);
  
   //Text for O
  fill(255);
  textSize(90);
  text("O", (oDog*3)/2, 385);
  
   //Text for G
  fill(255);
  textSize(100);
  text("G", (gDog*3)/2, 585);
  
  
  
}
