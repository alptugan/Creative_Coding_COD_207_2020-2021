float xstart;
float ynoise;
// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);

  background(0);

  //noLoop();

  xstart = random(10);
  ynoise = random(10);

  generatePoints();
}

void generatePoints() {
  
  
  xstart += 0.05;
  
  stroke(0, 50);
  fill(255, 200);

  pushMatrix();
  translate(width/2, height/2);
  ynoise = 0;
  for (float y = -(height/8); y <= (height/8); y+=3) {
    ynoise += 0.02;
    float xnoise = xstart;
    for (float x = -(width/8); x <= (width/8); x+=3) {
      xnoise += 0.02;
      drawPoint(x, y, noise(xnoise, ynoise));
    }
  }
  popMatrix();
}

void drawPoint(float x, float y, float noiseFactor) { 

  pushMatrix();
  translate(x * noiseFactor * 4, y * noiseFactor * 4); 
  float edgeSize = noiseFactor * 12;
  ellipse(0, 0, edgeSize, edgeSize);
  popMatrix();
}

void draw() {
  fill(0,255);
  rect(0,0,width,height);
  generatePoints();
}

void mousePressed() {
  background(0);
  xstart = random(10);
  ynoise = random(10);
  generatePoints();
}

void keyPressed() {
  if (key == 's') {
    saveFrame("test-#####.jpg");
  }
}
