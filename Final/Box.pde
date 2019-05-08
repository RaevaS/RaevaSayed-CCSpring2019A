//Frogger 1: Dan Shiffman 
class Box {
  float x;
  float y;
  float w;
  float h;
  
  Box(float x, float y, float w, float h){
    this.x = x+w;
    this.w = w;
    this.y = y+h;
    this.h = h;
  }
  
 boolean collision(Box other){ //tests if one rectangle intersects with another 
    float left = x;
    float right = x + w;
    float top = y;
    float bottom = y + h;
    
    float otherLeft = other.x;
    float otherRight = other.x + other.w;
    float otherTop = other.y;
    float otherBottom = other.y + other.h;
    
    
    return !(left >= otherRight || 
      right <= otherLeft ||
      top >= otherBottom ||
      bottom <= otherTop);
  }
  
  
  
}
