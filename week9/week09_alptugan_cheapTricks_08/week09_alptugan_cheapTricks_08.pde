float angle = 0.0;
void setup() { 
  surface.setLocation(0,0);
  size(1080, 1080); 
  smooth(); 
  noStroke();
  background(0);
}
void draw() {
  fill(0, 2);
  rect(0, 0, width, height); 
  fill(255);
  angle = angle + 0.02 * dir; 
  translate(width*0.5, height*0.5); 
  rotate(angle);
  rect(0,0, 60 + angle * 100, 60 + angle * 100);
}
