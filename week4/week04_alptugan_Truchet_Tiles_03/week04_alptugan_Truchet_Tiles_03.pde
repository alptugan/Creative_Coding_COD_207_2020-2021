// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

int tileSize;

float rnd;

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

  // to disable draw function runs until the program stops
  // so it runs only once as setup function does
  noLoop();
}


// Draw function runs until the program stops
void draw() {
  
  strokeWeight(6);
  strokeCap(PROJECT);

  // Draw 1st row
  for (int i = 0; i < width; i = i + tileSize) {
    for (int j = 0; j < height; j = j + tileSize) {
      // conditon to change line orientation
      rnd = random(0, 1);

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

      line(xStart + i, 
        yStart + j, 
        xEnd + i, 
        yEnd + j);
    }
  }
}
