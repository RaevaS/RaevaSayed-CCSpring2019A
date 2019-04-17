
//define the variables - let: can be reassigned
let ground;
let row_one =[]; //arrays for bricks that will be spawning radially from same location
//so have to make multiple rows
let row_two =[];
let row_three = [];
let row_four = [];
let rock;
let wall;
let world
let engine;
let mouseConstraint;


function setup() {
    //create Canvas
    createCanvas(600,400);
    //create engine
    engine = Matter.Engine.create();
    //create world
    world = engine.world;
    //create static ground
    ground = new Ground(width/2,height-10,width,20);
    //create wall - use ground class
    wall = new Ground(width-10,height/2, 26, height);
    //for loops fto create brick pyramid
    for(let i = 0; i < 5; i++){
        row_one[i] = new Box(500-i*35,300,35,60);
    }
    for(let i = 0; i < 4; i++){
        row_two[i] = new Box(485-i*36,230-i*50,35,60);
    }
    for(let i = 0; i < 3; i++){
        row_three[i] = new Box(468-i*36,95-i*50,35,60);
    }
    for(let i = 0; i < 1; i++){
        row_four[i] = new Box(435-i*36,80-i*50,35,60);
    }
    //create rock to throw at brick wall
    rock = new Rock(70,300,25);
    //create mouse options for user input to throw the rock
    const mouse = Matter.Mouse.create(canvas.elt);
    const options = {
        mouse: mouse
    }
    mouseConstraint = Matter.MouseConstraint.create(engine, options);
    //add mouseConstraint to the world
    Matter.World.add(world,mouseConstraint);
    

}

function draw() {
    //draw all the brick loops
    background(150);
    for (let box of row_one){
        box.show();
    }
    for (let box of row_two){
        box.show();
    }
    for (let box of row_three){
        box.show();
    }
    for (let box of row_four){
        box.show();
    }
    //use show function to display ground, wall and rock
    ground.show();
    wall.show();
    rock.show();
    //update engine
    Matter.Engine.update(engine);
}