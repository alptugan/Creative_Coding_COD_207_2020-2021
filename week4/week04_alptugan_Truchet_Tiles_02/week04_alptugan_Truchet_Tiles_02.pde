// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

int tileSize;

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

  // Assign the value of hGap value;
}


// Draw function runs until the program stops
void draw() {

  // Draw 1st row
  for (int i = 0; i < width; i = i + tileSize) {
    // i = 0;
    // i = 1;
    // i = 2;
    // ..
    // ..
    // i = 800;
    for (int j = 0; j < height; j = j + tileSize) {
      line(xStart + i, 
           yStart + j, 
           xEnd + i, 
           yStart + j);
    }
  }
}
