// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

int tileSize;
int randomSeedVal;
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
  xEnd   = 50;
  yStart = 0;
  yEnd   = yStart;

  randomSeedVal = 10;
}


// Draw function runs until the program stops
void draw() {
  background(255);
  strokeWeight(6);
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
        xEnd   = 50;
        yStart = 0;
        yEnd   = yStart;
      } 
      else
      {
        // Draw vertical line 
        xStart = 0;
        xEnd   = 0;
        yStart = 0;
        yEnd   = 50;
      }

      line(xStart + i, 
        yStart + j, 
        xEnd + i, 
        yEnd + j);
    }
  }

}

void mousePressed() {
  randomSeedVal = millis();
}

// TODO: Challenge the following attributes,
//  whenever the user press mouse button;
// 1- Line color
// 2- Background color
// 3- The strokeSize
// 4- Size of the tiles
