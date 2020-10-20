// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

// Declare the variable that holds the horizontal gap value between lines
int hGap;

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
  
  // Assign the value of hGap value;
  hGap   = 20;
}


// Draw function runs until the program stops
void draw() {

  // we want to draw 200 px long horizontal lines;
  // we know line(x1,y1,x2,y2)
  // So, in order to draw 200 px long line
  // |x2 - x1| = 200 or vice versa as follows;
  line(xStart, yStart, xEnd, yEnd);
  line(xStart, yStart + hGap, xEnd, yEnd + hGap);
  line(xStart, yStart + hGap * 2, xEnd, yEnd + hGap * 2);
  line(xStart, yStart + hGap * 3, xEnd, yEnd + hGap * 3);
  line(xStart, yStart + hGap * 4, xEnd, yEnd + hGap * 4);
  
  // TODO: 15 min. challenge
  // Position the line group in the middle of the window
  // Set the line strokeSize to 5 px
  // Draw the lines in different colors
}
