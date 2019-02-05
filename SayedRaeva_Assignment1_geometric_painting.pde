void setup () {
 //Create Canvas
 size (550, 750);
 background (255);

//Top purple quad
noStroke();
fill (#2E2236);
quad(275, 10, 425, 35, 300, 250, 150, 200);

//yellow quad
noStroke();
fill (#E3CB52);
quad (275, 450, 360, 455, 330, 580, 280, 580);

//long blue line
noStroke();
fill (#0237ED);
quad (100,530, 435, 550, 435, 560, 100, 540);

//blackish/grey slanted quad
noStroke();
fill (#242424);
quad (270, 595, 285, 635, 210, 670, 195, 630);

// red tilted box
noStroke();
fill (#9D2929);
quad (275, 645, 320, 640, 325, 660, 280, 665);

// red skinny line
noStroke();
fill (#9D2929);
rect (310,665, 60, 5);

//green circle
noStroke();
fill (#427C48);
ellipse (330, 683, 20,20);

}





void draw () {

 //blackish grey square on top of blue line
noStroke();
fill (#242424);
rect (150, 500, 90,90);

}
