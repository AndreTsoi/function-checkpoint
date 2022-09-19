color green  = #99d98c;
color blue   = #90e0ef;
color red    = #c1121f;
color yellow = #fee440;

void setup() {
  size(800,600);
  
  
}

void draw() {
  //sky 
  background(blue);
  
  
  
  //sun
  fill(yellow);
  stroke(yellow);
  circle(150, 150, 150);
  
  //ground
  fill(green);
  stroke(green);
  rect(0, 400, 800, 200);
  
  house(250, 200);
}


void house(int x, int y) {
  pushMatrix();
  translate(x, y);
  
  walls();
  roof();
  leftWindow();
  middleWindow();
  rightWindow();
  door();
  
  popMatrix();
}

void walls() {
  fill(red);
  stroke(red);
  rect(0, 0, 300,300);
  
}

void roof() {
 triangle(0, 0, 300, 0, 150, -100); 
  
}

void leftWindow() {
 fill(blue);
 stroke(red);
 strokeWeight(4);
 square(50, 50, 50); //glass
 line(75, 50, 75, 100); //vertical
 line(50, 75, 100, 75); //horizontal
  
}

void middleWindow() {
 fill(blue);
 stroke(red);
 strokeWeight(4);
 square(125, 50, 50);
 line(150, 50, 150, 100);
 line(125, 75, 225, 75);
 
  
}

void rightWindow() {
 fill(blue);
 stroke(red);
 strokeWeight(4);
 square(200, 50, 50);
 line(225, 50, 225, 100);
 line(200, 75, 250, 75);
  
  
}

void door() {
  fill(255);
  rect(125, 200, 50, 100);
  stroke(red);
  circle(165, 250, 5);
  
  
}
