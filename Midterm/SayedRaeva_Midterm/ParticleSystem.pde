class ParticleSystem{
  
  //fields
  public ArrayList<Particle> particles = new ArrayList<Particle>(); //system particles
  ParticleV place = new ParticleV(0, 0); //location of particles
  
  //constructor
  
  //blank constructor
  public ParticleSystem(){
  }
  
  //constructor to place particle based on ParticleV
  public ParticleSystem(ParticleV p){
    place.x = p.x;
    place.y = p.y;
  }
  
  //constructor for place --> 2 float values
  public ParticleSystem(float x, float y){
    place.x = x;
    place.y = y;
  }
  
  //methods
  
  //add particles into system
  public void addParticle(){
    particles.add(new Particle(place));
  }
  
  //to run the whole particle system --> create them, show, move and check for death
  public void run(){
    //loop for making multiple particles
    for(int i = 0; i < particles.size(); i++){
      Particle p = particles.get(i); 
      p.show(); //show the particles
      p.move(); //move the particles
      
      if(p.Dead()){
        particles.remove(i);
      }
    }
  }
  
  
  //Make collision in class ParticleSystem so that it is accessible by sketch
  public boolean collides(Falling fallen){
    boolean collide = false;
    // checking for distance threshold and returning true if collision happens
    //for all particles
     for(int i = 0; i < particles.size(); i++){
       Particle p = particles.get(i);
       //make a variable equal to the x and y locations of the particle 
       float distance = dist(fallen.posx,fallen.posy, p.loc.x,p.loc.y);
       if(distance <= 7){
        collide=true;
        break;
       }
     }
     return collide;
  } 
  
}
