class ParticleV{

  
  
  //x y position
  constructor(x = 0, y = 0){
    this.x = x;
    this.y = y;
  }
  
  
  //add vector
   add(other){
    this.x += other.x;
    this.y += other.y;
  }
  
  //subtract vector
  sub(other){
    this.x -= other.x;
    this.y -= other.y;
  }
  
  //multiply the vector 
  mult(m){
    this.x *= m;
    this.y *= m;
  }
  
  
}
