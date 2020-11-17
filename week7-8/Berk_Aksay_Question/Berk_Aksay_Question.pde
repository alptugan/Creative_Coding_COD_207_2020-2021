float a;
float b;
float c;
float d;
float r;
float e;
float p;

float z; 
float rConstant;

float theLastRecTime;

void setup() {
  surface.setLocation(0, 0);
  size (800, 800);
  z = height/2;
  frameRate(64);

  a = random (0, 400);
  b = random (0, 400);
  c = random (0, 400);
  d = random (0, 400);
  r = random (0, 90);
  e = random (0, 10);
  p = random (50, 250);
  
  theLastRecTime = millis();
}

void draw() {

  background(p, p, 0);


  pushMatrix();
  translate(width/2, height/2);

  for (int i = 0; i <500; i= i+10) {
    rotate(r);

    strokeWeight(1);
    fill (#38F2BD);
    rect (a, z, e+3, i);
    fill  (#36D9BB);
    rect(b, z, e, i);
    fill  (#36BFA6);
    rect(c, z, e+5, -i);
    fill  (#04BFAD);
    rect (d, z, e+10, i);


    rConstant = sin(millis() * 0.004) * (width);

    z = constrain(rConstant, 0, width);

    /*z = z - rConstant;
     
     if (z < 0) { 
     z = height;
     }*/
  }
  popMatrix();

  if (millis() - theLastRecTime > 1500) {
    a = random (0, 400);
    b = random (0, 400);
    c = random (0, 400);
    d = random (0, 400);
    r = random (0, 90);
    e = random (0, 10);
    p = random (50, 250);
    
    theLastRecTime = millis();
  }
}

void keyPressed() {
  if (key == 'r') {
    a = random (0, 400);
    b = random (0, 400);
    c = random (0, 400);
    d = random (0, 400);
    r = random (0, 90);
    e = random (0, 10);
    p = random (50, 250);
  }
}
