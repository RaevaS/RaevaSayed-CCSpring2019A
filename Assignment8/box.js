class Box {
    constructor(x,y,w,h){
        this.body = Matter.Bodies.rectangle(x,y,w,h);
        this.body.friction = 1;
        //this.body.restitution = 1;
        this.body.mass = 50;
        Matter.World.add(world,this.body);
        this.w = w;
        this.h = h;
        
    }


    show() {
        const pos = this.body.position;
        const angle = this.body.angle;
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