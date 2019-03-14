class Particle {
//fields
  public ParticleV loc = new ParticleV(0, 0);
  public ParticleV vel = new ParticleV(random(-5, 5), random(-5, 5));
  public ParticleV accel = new ParticleV(random(-0.05, 0.05), random(-0.07, 1));
  
  public float sqlength = random(10, 50); //width and height of the sq
  public float life = 255; //particle gets more transparent as it dies
  
  
  //constructors
  
  //blank constructor
  public Particle(){
    
  }
  
  //constructor for vector placing
  public Particle(ParticleV place){
    this.loc.x = place.x;
    this.loc.y = place.y;
  }
  
  //methods
  
  //how to move the particle
  void move(){
    vel.add(accel);
    loc.add(vel);
    life -= 5.5; 
  }
  
  //how to draw the particle
  void show(){
    fill(56,27,227, life);
    square(loc.x, loc.y, sqlength);
  }
  
  //check for dead particle (but at one so less transparent at end)
  boolean Dead(){
    return (life < 1.0);
  }
}
