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
  xEnd   = tileSize;
  yStart = 0;
  yEnd   = yStart;
}


// Draw function runs until the program stops
void draw() {

  // Draw 1st row
  /*for (int i = 0; i < width; i = i + tileSize) {
   line(xStart + i, yStart, xEnd + i, yStart);
   }*/

  // TODO: 5 min. Challenge
  // Draw the 2nd column

  // Draw 1st column
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }

  xStart = tileSize;
  xEnd = tileSize * 2;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }

  xStart = tileSize * 2;
  xEnd = tileSize * 3;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }

  xStart = tileSize * 3;
  xEnd = tileSize * 4;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }


  xStart = tileSize * 4;
  xEnd = tileSize * 5;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }

  xStart = tileSize * 5;
  xEnd = tileSize * 6;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }

  xStart = tileSize * 6;
  xEnd = tileSize * 7;
  for (int j = 0; j < height; j = j + tileSize) {
    line(xStart, yStart + j, xEnd, yStart + j);
  }
}
