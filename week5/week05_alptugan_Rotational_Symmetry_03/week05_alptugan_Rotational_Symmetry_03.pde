float circularRad;
float numItem;
float x;
float y;
float angle;

float rw;
float rh;

void setup() {
  surface.setLocation(100,100);
  size(800,800);
  numItem = 30;
  x = 0;
  y = 0;
  circularRad = 200;
  
  rw = 200;
  rh = 200;
}

void draw() {
  background(255);
  
  pushMatrix();
  noStroke();
  
  
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
    
    
    fill(#333333);
    pushMatrix();
    translate(x,y);
    rotate(curAngle);
    noFill();
    stroke(#333333);
    rect(-rw*0.5,-rh*0.5, rw, rh);
    popMatrix();
    
    fill(#ffcc00);
    circle(x,y,30);
  }
  popMatrix();
}

void keyPressed() {
  
 if(key == 'r') {
  rw = random(50, 1000);
  rh = random(50, 1000);
  circularRad = random(10,600);
  numItem = random(3,100);
 }
}
