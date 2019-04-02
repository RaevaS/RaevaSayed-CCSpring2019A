static class ParticleV{
  //fields
  public float x = 0;
  public float y = 0;
  
  //constructors
  //blank constructor
  public ParticleV(){
    
  }
  
  //x y position
  public ParticleV(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  
  //add vector
  public void add(ParticleV other){
    this.x += other.x;
    this.y += other.y;
  }
  
  //subtract vector
  public void sub(ParticleV other){
    this.x -= other.x;
    this.y -= other.y;
  }
  
  //multiply the vector 
  public void mult(float m){
    this.x *= m;
    this.y *= m;
  }
  
  
}
