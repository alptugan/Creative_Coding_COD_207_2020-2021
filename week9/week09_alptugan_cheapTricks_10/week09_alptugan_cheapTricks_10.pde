float angle = 0.0; // Current angle 
float speed = 0.08; // Speed of motion 
float radius; // Range of motion
float dir;
void setup() { 
  surface.setLocation(0, 0);
  size(1080, 1080); 
  smooth(); 
  noStroke();
  background(0);
  
  radius = height * 0.3;
  dir = 1;
}
void draw() {

  fill(0, 12);
  rect(0, 0, width, height); 
  fill(255);
  angle += speed;
  float sinval = sin(angle);
  float yoffset = sinval * radius; 
  
  float sinval2 = abs(sin(angle));
  float yoffset2 = sinval2 * radius; 
  
  ellipse(width*0.5, height * 0.5 + yoffset, 80 + yoffset2, 80 + yoffset2); 

}
