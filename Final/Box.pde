//superclass box for collision checking
class Box {
  //fields
  float x;
  float y;
  float w;
  float h;
  
  //constructor
  Box(float x, float y, float w, float h){
    this.x = x;
    this.w = w;
    this.y = y;
    this.h = h;
  }
  
  //collision state
 boolean collision(Box other){ //tests if one rectangle intersects with another 
   
    float left = x;
    float right = x + w;
    float top = y;
    float bottom = y + h;
    
    float otherLeft = other.x;
    float otherRight = other.x + other.w;
    float otherTop = other.y;
    float otherBottom = other.y + other.h;
    
    //if the top collides with the bottom of the other object or the bottom is greater than the top of the other object
    if (  (100-top) < (100-otherBottom) || (100-bottom) > (100-otherTop) ) 
    {
     return false;
    }
    //corners - right is greater than other left or left greater than other right
    if (right < otherLeft || left > otherRight) 
    {
     return false;
    }
    //otherwise true
    return true;
      
  }
  
  
  
}
//Parts from Frogger 1: Dan Shiffman - Collision checking
