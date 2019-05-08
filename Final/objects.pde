class Objects extends Box {
  
  //fields
  public boolean organic = true;
  public float objectposx = random(width);
  public float objectposy = 0;
  public PImage img;
  public float speed = random(1,5);
  
  public Objects(PImage img, boolean organic, float x, float y, float w, float h){
    super(x,y,w,h);
    this.img = img;
    this.organic = organic;
  }
  
  public void drawObjects() {
   
   objectposy += speed;
    
    
  }
  
  public void showObjects () {
     image(img,this.objectposx,this.objectposy);
   
   }
   

}
   
   
