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
  for (int i = 0; i < width + 50; i = i + 50) {
    x = i;
    y = height * 0.5 + noise(i * 0.004) * 150;
    
    if(i == 0) {
      curveVertex(x, y);
    }
    curveVertex(x, y);
  }
  curveVertex(x, y);
  endShape();
}

void mousePressed() {
  noiseSeed(int(random(999999)));
  loop();
}

void mouseReleased() {
  noLoop();
}
