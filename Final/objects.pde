class Objects extends Box {
  
  //fields
  public boolean organic = true;
  public PImage img;
  public float speed = random(1,5);
  
  //constructor - img, organic, x,y,w,h
  public Objects(PImage img, boolean organic, float x,float y, float w, float h){
    //
    super(x,y,w,h);
    this.img = img;
    this.organic = organic;
  }
  
  //method to move the objects
  public void moveObjects() {
   //make position increase by the speed to show falling
   y += speed;
    
    
  }
  
  //method to show objects  - whichever gets passed into it (fruit or plastic)
  public void showObjects () {
     image(img,x,y);
   
   }
   

}
   
   
