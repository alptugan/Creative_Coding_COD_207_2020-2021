float circularRad;
float numItem;
float x;
float y;
float angle;

void setup() {
  size(800,800);
  numItem = 10;
  x = 0;
  y = 0;
  circularRad = 200;
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
  for(int i = 0; i < numItem; i = i + 1) {
    //calculate current angle for each circle
    // 1st 0
    // 2nd 36
    // 3rd 72
    // ... so on; in every cycle in for loop we multiply 
    // angle with current i value
    // In Processing we have convert degrees to radians
    float curAngle = radians(angle * i);
    x = circularRad * cos(curAngle);
    y = circularRad * sin(curAngle);
    circle(x,y,30);
  }
  popMatrix();
  
}
