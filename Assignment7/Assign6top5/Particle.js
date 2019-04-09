class Particle {
  //constructor
  constructor(loc = new ParticleV(0, 0),
  vel = new ParticleV(random(-5, 5), random(-5, 5)),
  accel = new ParticleV(random(-0.05, 0.05), random(-0.07, 1)),
  sqlength = random(10, 50),
  life = 255,
  colorList = [color(56,27,227), color(255,240,75), color(252,168,251)],
  randomColor = colorList[(Math.floor((random(colorList.length))))]){
    this.loc = loc
    this.vel = vel
    this.life = life
    this.accel = accel
    this.colorList = colorList
    this.randomColor = randomColor
    this.sqlength = sqlength
  }
  

  //constructor for vector placing
  
  //methods
  //how to move the particle
  move(){
    this.vel.add(this.accel);
    this.loc.add(this.vel);
    this.life -= 5.5; 
  }
  
  //how to draw the particle
  show(){
    fill(this.randomColor, this.life);
    square(this.loc.x, this.loc.y, this.sqlength);
  }
  
  //check for dead particle (but at one so less transparent at end)
   Dead(){
    return (this.life < 1.0);
  }
}
