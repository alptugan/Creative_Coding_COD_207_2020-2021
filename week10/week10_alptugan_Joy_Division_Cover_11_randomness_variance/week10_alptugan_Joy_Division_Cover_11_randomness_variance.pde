// https://blogs.scientificamerican.com/sa-visual/pop-culture-pulsar-origin-story-of-joy-division-s-unknown-pleasures-album-cover-video/

int step;
int lSize;

void setup() {
  surface.setLocation(0, 0);
  size(800, 800);
  background(0);

  smooth(); 

  strokeWeight(2);
  step = 10;
  lSize = width;


  noLoop();
}


void draw() {
  background(0); 
  //noFill();
  fill(0);
  stroke(255);

  // Assign values to arrays
  float x = 0;
  float y = step * 7;
  
  for (int i = step * 7; i <= height - step * 7; i += step) {
    beginShape();
    curveVertex(0, i);
    curveVertex(0, i);
    for (int j = 0; j <= lSize; j+= step*2) {
      float distanceToCenter = abs(j - lSize / 2);
      float variance = max(lSize / 2 - (230) - distanceToCenter, 0);

      float rnd = random(1) * variance / 5 * -1;
      x = j;
      y = i + rnd;
      curveVertex(x, y);
    } 
    curveVertex(x, y);
    curveVertex(x, y);
    endShape();
  }
}

void mousePressed() {
  noiseSeed(int(random(99999)));
  randomSeed(int(random(999999)));
  loop();
}

void mouseReleased() {
  noLoop();
}
