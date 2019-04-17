//class box for bricks and wall
class Box {
    constructor(x,y,w,h){
        //create body as rect
        this.body = Matter.Bodies.rectangle(x,y,w,h);
        this.body.friction = 1;
        this.body.density = 0.005;
        this.body.mass = 100;
        //add body/rects to the world
        Matter.World.add(world,this.body);
        //set up width and height
        this.w = w;
        this.h = h;
        
    }

//show function
    show() {
        //create position and angle to use physics of matter.js - position and angle
        const pos = this.body.position;
        const angle = this.body.angle;
        //push and pop to inputted w,h, angle and pos
        push();
        translate(pos.x,pos.y);
        rotate(angle);
        fill (138,51,53);
        rectMode(CENTER);
        stroke(255);
        rect(0, 0, this.w, this.h);
        pop();
    }  
} 