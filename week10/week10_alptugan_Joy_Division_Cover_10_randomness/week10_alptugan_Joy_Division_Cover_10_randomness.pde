// https://blogs.scientificamerican.com/sa-visual/pop-culture-pulsar-origin-story-of-joy-division-s-unknown-pleasures-album-cover-video/

int step;
int lSize;

void setup() {
  surface.setLocation(0, 0);
  size(800, 800);
  background(0);

  smooth(); 

  strokeWeight(2);
  step = 20;
  lSize = width;


  noLoop();
}


void draw() {
  background(0); 
  noFill();
  stroke(255);
  
  // Assign values to arrays
  for (int i = step; i <= height - step; i += step) {
    beginShape();
    for (int j = step; j <= lSize - step; j+= step) {
      float rnd = random(20);
      float x = j;
      float y = i + rnd;
      vertex(x,y);
    } 
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
