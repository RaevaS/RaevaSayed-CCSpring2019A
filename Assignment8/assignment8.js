
let ground;
let box;
let rock;
let world
let engine;
//let mouseConstraint;


function setup() {
    createCanvas(600,400);
    engine = Matter.Engine.create();
    world = engine.world;
    ground = new Ground(width/2,height-10,width,20);
    box = new Box(450,300,50,75);
    rock = new Rock(70,300,25);

    /*const mouse = Matter.Mouse.create(canvas.elt);
    const options = {
        mouse: mouse
    }
    mouseConstraint = Matter.MouseConstraint.create(engine, options);
    Matter.World.add(world,mouseConstraint);
    */

}

function draw() {
    background(150);
    Matter.Engine.update(engine);
    box.show();
    ground.show();
    rock.show();
}