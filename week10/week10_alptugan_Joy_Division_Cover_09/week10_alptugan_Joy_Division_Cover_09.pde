// https://blogs.scientificamerican.com/sa-visual/pop-culture-pulsar-origin-story-of-joy-division-s-unknown-pleasures-album-cover-video/

int step;
int lSize;
float [] xArr; // Array of x points
float [] yArr; // Array of y points

void setup() {
  surface.setLocation(0, 0);
  size(800, 800);
  background(0);

  smooth(); 

  strokeWeight(2);
  step = 10;
  lSize = width;

  // init arrays to hold coordinates to create lines
  xArr = new float[lSize];
  yArr = new float[lSize];

  noLoop();
}


void draw() {
  background(0); 
  noFill();
  stroke(255);
  
  // Assign values to arrays
  for (int i = step; i <= height - step; i += step) {
    //var line = [];
    beginShape();
    for (int j = step; j <= lSize - step; j+= step) {
      //var point = {x: j, y: i};
      //line.push(point);
      float x = j;
      float y = i;
      vertex(x,y);
    } 
    endShape();
    //lines.push(line);
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
