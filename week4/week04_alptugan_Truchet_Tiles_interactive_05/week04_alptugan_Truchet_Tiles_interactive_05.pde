// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

int tileSize;
int randomSeedVal;
int rBg;
int gBg;
int bBg;

int rLine;
int gLine;
int bLine;

int strokeThck;

// setup function runs once, when the program starts
void setup() {
  // set window position on screen
  surface.setLocation(0, 200);

  //Set window size
  size(800, 800);

  // set background color
  background(#ffffff);

  // Set the square tile size
  tileSize = 50;

  // Assign the values to the x and y
  xStart = 0;
  xEnd   = tileSize;
  yStart = 0;
  yEnd   = yStart;

  randomSeedVal = 10;
  
  rBg = 255;
  gBg = 255;
  bBg = 255;
  
  rLine = 0;
  gLine = 0;
  bLine = 0;
  
  strokeThck = 6;
}


// Draw function runs until the program stops
void draw() {
  background(rBg, gBg, bBg);
  strokeWeight(strokeThck);
  strokeCap(PROJECT);

  randomSeed(randomSeedVal);
  // Draw 1st row
  for (int i = 0; i < width; i = i + tileSize) {
    for (int j = 0; j < height; j = j + tileSize) {
      // conditon to change line orientation
      
      float rnd = random(0, 1);

      if (rnd > 0.5) {
        // Draw horizontal line
        xStart = 0;
        xEnd   = tileSize;
        yStart = 0;
        yEnd   = yStart;
      } 
      else
      {
        // Draw vertical line 
        xStart = 0;
        xEnd   = 0;
        yStart = 0;
        yEnd   = tileSize;
      }
      
      stroke(rLine, gLine, bLine);
      line(xStart + i, 
        yStart + j, 
        xEnd + i, 
        yEnd + j);
    }
  }

}

void mousePressed() {
  randomSeedVal = millis();
  
  // Change Line color
  rLine = int(random(0, 255));
  gLine = int(random(0, 255));
  bLine = int(random(0, 255));
  
  // Change background color
  rBg = int(random(0, 255));
  gBg = int(random(0, 255));
  bBg = int(random(0, 255));
  
  // Change thickness
  strokeThck = int(random(4, 20));
}
