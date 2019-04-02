class ParticleSystem{
  
  //fields
  ArrayList<Particle> particles = new ArrayList<Particle>(); //system particles
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
  
  
}
