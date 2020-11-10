float k;
float numItem;
float x;
float y;
float angle;
float curAngle;

void setup() {
  size(800,800);
  numItem = 1000;
  x = 0;
  y = 0;
  k = 0;
}

void draw() {
  background(255);
  
  pushMatrix();
  noStroke();
  fill(#ffcc00);
  
  // Move everthing in the forloop to center
  translate(width/2, height/2);
  
  // calculate angle per circle
  angle = 360 / numItem;
  k = 0;
  curAngle = 0;
  for(int i = 0; i < numItem; i = i + 1) {
    k = k + 0.3;
    curAngle += 0.05;
    x = k * cos(curAngle);
    y = k * sin(curAngle);
    circle(x,y, 5);
    
    
    
    
  }
  popMatrix();
  
}
