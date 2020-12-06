// https://blogs.scientificamerican.com/sa-visual/pop-culture-pulsar-origin-story-of-joy-division-s-unknown-pleasures-album-cover-video/

int step;
int lSize;
float flow;
void setup() {
  surface.setLocation(0, 0);
  size(800, 800);
  background(0);

  smooth(); 

  strokeWeight(2);
  step = 10;
  lSize = width;


  //noLoop();
}


void draw() {
  background(0); 
  //noFill();
  fill(0);
  stroke(255);

  // Assign values to arrays
  float x = 0;
  float y = step * 7;
  
  
  flow -= 0.1;
  float yoff = flow;
  for (float i = step * 7; i <= height - step * 7; i += step) {
    beginShape();
    curveVertex(0, i);
    curveVertex(0, i);
    
    float xoff = 0;
    for (float j = 0; j <= lSize; j+= step*2) {
      float distanceToCenter = abs(j - lSize / 2.0);
      float variance = max(lSize / 2 - (220) - distanceToCenter, 0);

      float rnd = noise(xoff, yoff ) * variance / 2 * -1.2;
      x = j;
      y = i + rnd;
      curveVertex(x, y);
      xoff += 0.8;
    } 
    yoff += 0.6;
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
