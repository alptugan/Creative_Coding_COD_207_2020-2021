// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

// setup function runs once, when the program starts
void setup() {
  // set window position on screen
  surface.setLocation(0,200);
  
  //Set window size
  size(800,800);
  
  // set background color
  background(#ffffff);
  
  // Assign the values to the x and y
  xStart = 0;
  xEnd   = 200;
  yStart = 0;
  yEnd   = 0;
}


// Draw function runs until the program stops
void draw() {
  // we want to draw 200 px long horizontal lines;
  // we know line(x1,y1,x2,y2)
  // So, in order to draw 200 px long line
  // |x2 - x1| = 200 or vice versa as follows;
  line(xStart, yStart, xEnd, yEnd);
  line(xStart, yStart + 20, xEnd, yEnd + 20);
  line(xStart, yStart + 40, xEnd, yEnd + 40);
  line(xStart, yStart + 60, xEnd, yEnd + 60);
  line(xStart, yStart + 80, xEnd, yEnd + 80);
}
