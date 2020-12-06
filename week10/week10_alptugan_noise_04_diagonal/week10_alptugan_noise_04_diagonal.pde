float x;
float y;

void setup() {
  surface.setLocation(0, 0);
  size(1080, 1080);
  background(0);

  smooth(); 
  noLoop();
}


void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);

  noFill();
  beginShape();
  //circle(0, 0, 5);
  x = 0;
  y = 0;
  curveVertex(x, y);
  curveVertex(x, y);
  
  for (int i = 50; i < width - 50; i = i + 50) {
    x = i + noise(0, i * 0.04) * 50;
    y = i + noise(i * 0.04, 0) * 50;

    curveVertex(x, y);
    //circle(x, y, 5);
  }
  curveVertex(width, height);
  curveVertex(width, height);
  //circle(width, height, 5);
  endShape();
}

void mousePressed() {
  noiseSeed(int(random(999999)));
  loop();
}

void mouseReleased() {
  noLoop();
}
