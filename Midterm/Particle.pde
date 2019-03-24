class Particle {
//fields
  public ParticleV loc = new ParticleV(0, 0);
  public ParticleV vel = new ParticleV(random(-5, 0), random(-5, 0));
  public ParticleV accel = new ParticleV(random(0, 3), random(0,3));
  
  public float radius = 20; //width and height of the particles
  public float life = 255; //particle gets more transparent as it dies
  public int c1 = 255;
  public color Color = color(hue(c1),0,0);
  
  //constructors
  
  //blank constructor
  public Particle(){
    
  }
  
  //constructor for vector placing
  public Particle(ParticleV origin){
   this.loc.x = f1.fbposx;
   this.loc.y = 660;
  }
  
  //methods
  
  //how to move the particle
  void move(){
    vel.add(accel);
    loc.add(accel);
    life -= 5.0;
    c1 += 3.5;
  }
  
  //how to draw the particle
  void show(){
    
    fill(Color, life);
    ellipse(loc.x, loc.y, radius,radius);
  }
  
  //check for dead particle (but at one so less transparent at end)
  boolean Dead(){
    return (life < 1.0);
  }
}
