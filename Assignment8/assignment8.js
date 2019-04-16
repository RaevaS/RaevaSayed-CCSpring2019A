
let ground;
let boxes =[];
let rock;
let wall;
let world
let engine;
let mouseConstraint;


function setup() {
    createCanvas(600,400);
    engine = Matter.Engine.create();
    world = engine.world;
    ground = new Ground(width/2,height-10,width,20);
    wall = new Ground(width-10,height/2, 26, height);
    for(let i = 0; i < 6; i++){
        boxes[i] = new Box(550,300-i*40,50,75);
    }
    for(let i = 0; i < 6; i++){
        var box = new Box(497,300-i*40,50,75);
        boxes.push(box);
    }

    rock = new Rock(70,300,25);

    const mouse = Matter.Mouse.create(canvas.elt);
    const options = {
        mouse: mouse
    }
    mouseConstraint = Matter.MouseConstraint.create(engine, options);
    Matter.World.add(world,mouseConstraint);
    

}

function draw() {

    background(150);
    for (let box of boxes){
        box.show();
    }
    ground.show();
    wall.show();
    rock.show();
    Matter.Engine.update(engine);
}