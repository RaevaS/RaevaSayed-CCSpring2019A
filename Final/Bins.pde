
class Bins extends Box{
  //PImage class to handle images
  PImage redbin;
  PImage yellowbin;
  PImage bg;
  
  public boolean yellow = true;
  
  //bin constructor
  public Bins(int x, int y, int w, int h){
    //with collision checking - box constructor
    super(x,y,w,h);
  }
 //Draw method for bins
  public void drawBins(){
      background(bg);
      //mapped mouse - 35 bc of image
      x = mouseX-35;
      
      //if bin is yellow then show yellow bin
      if (yellow) {
        image(yellowbin,x,y);
       //otherwise show red bin 
      } else {
        image(redbin,x,y);
      }
      
      
      
    }

}
