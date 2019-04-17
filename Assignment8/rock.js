//class rock for object that will be thrown at brick wall
class Rock{
    constructor(x,y,r){
        //create circle
        this.body = Matter.Bodies.circle(x,y,r)
        //add body to the world
        Matter.World.add(world, this.body);
        //radius
        this.r = r;
        
    }

//show function
    show() {
        //create position and angle to use physics of matter.js - position and angle
        const pos = this.body.position;
        const angle = this.body.angle;
        //push and pop to inputted w,h, angle and pos to where mouse will place it
        push();
        translate(pos.x,pos.y);
        rotate(angle);
        fill (80);
        stroke(255);
        circle(0, 0, this.r*2); //syntax is diameter so r*2
        pop();
    }  
}