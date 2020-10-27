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
  xEnd   = 0;
  yStart = 0;
  yEnd   = tileSize;

  // Assign the value of hGap value;
}

void draw() {
  
  strokeWeight(4);
  background(255);
  line(xStart, yStart, xEnd, yEnd);
  
}
