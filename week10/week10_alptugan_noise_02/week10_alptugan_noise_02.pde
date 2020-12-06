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
  //curveVertex(0, height*0.5);
  for (int i = 0; i < width; i = i + 50) {
    x = i;
    y = height * 0.5 + noise(i * 0.004) * 150;

    curveVertex(x, y);
  }
  //curveVertex(width, height*0.5);
  endShape();
}

void mousePressed() {
  noiseSeed(int(random(999999)));
  loop();
}

void mouseReleased() {
  noLoop();
}
