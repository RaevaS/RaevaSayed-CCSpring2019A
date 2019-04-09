class ParticleSystem{
  
  constructor(particles = [],place = new ParticleV(0, 0)){
    this.particles = particles
    this.place = place
  }
  //fields
  //ArrayList<Particle> particles = new ArrayList<Particle>(); //system particles
  //ParticleV place = new ParticleV(0, 0); //location of particles
  
  //constructor
  //blank constructor
  ParticleSystem(){
  }
  
  //constructor to place particle based on ParticleV
  ParticleSystem(p){
    this.place.x = p.x;
    this.place.y = p.y;
  }
  
  //constructor for place --> 2 var values
  ParticleSystem(x, y){
    this.place.x = x;
    this.place.y = y;
  }
  
  //methods
  //add particles varo system
 addParticle(){
    this.particles.push(new Particle(this.place));
  }
  
  //to run the whole particle system --> create them, show, move and check for death
  run(){
    
    //loop for making multiple particles
    for(var i = 0; i < this.particles.length; i++){
      var p = this.particles[i]; 
      p.show(); //show the particles
      p.move(); //move the particles
      
      if(p.Dead()){
        this.particles.splice(i,1);
      }
    }
  }
  
  
}
