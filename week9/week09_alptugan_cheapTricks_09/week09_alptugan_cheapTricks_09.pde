float angle = 0.0;
float dir;
void setup() { 
  surface.setLocation(0,0);
  size(1080, 1080); 
  smooth(); 
  noStroke();
  background(0);
  dir = 1;
}
void draw() {
  
  fill(0, 12);
  rectMode(CORNER);
  noStroke();
  rect(0, 0, width, height); 
  //fill(255);
  noFill();
  stroke(255);
  angle = angle + 0.02 * dir; 
  
  if(angle > TWO_PI || angle < 0) {
     dir = dir * -1; 
  }
  pushMatrix();
  rectMode(CENTER);
  translate(width*0.5, height*0.5); 
  rotate(angle);
  rect(0,0, 60 + angle * 100, 60 + angle * 100);
  popMatrix();
}
