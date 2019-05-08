
class Bins extends Box{
  //PIamge class to handle loading of images
  PImage redbin;
  PImage yellowbin;
  PImage bg;
  
  public boolean yellow = true;
  public int binState = 0;
  public int posybins = 550;
  public int posxbins = width/2;
  
  public Bins(int x, int y, int w, int h){
    
    super(x,y,w,h);
  }
 
  public void drawBins(){
      background(bg);
      
      if (yellow) {
        image(yellowbin,this.posxbins = mouseX-35,this.posybins);
      } else {
        image(redbin,this.posxbins = mouseX-35,this.posybins);
      }
      
      
      
    }

}
  
