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
  xStart = (width - 200) / 2;
  xEnd   = xStart + 200;
  yStart = (height - (5 * 20)) / 2;
  yEnd   = yStart;
  
  // Assign the value of hGap value;
  hGap   = 20;
}


// Draw function runs until the program stops
void draw() {
  // we want to draw 200 px long horizontal lines;
  // we know line(x1,y1,x2,y2)
  // So, in order to draw 200 px long line
  // |x2 - x1| = 200 or vice versa as follows;
  /*line(xStart, yStart, xEnd, yEnd);
  line(xStart, yStart + hGap, xEnd, yStart + hGap);
  line(xStart, yStart + hGap * 2, xEnd, yStart + hGap * 2);
  line(xStart, yStart + hGap * 3, xEnd, yStart + hGap * 3);
  line(xStart, yStart + hGap * 4, xEnd, yStart + hGap * 4);*/
  
  
  for(int i = 0; i < 5; i = i + 1) {
    // To see the responce from Processing
    //println(i);
    line(xStart, yStart + hGap * i, xEnd, yEnd + hGap * i);
  }
  
  // TODO: 15 min. challenge
  // Draw 30 linesin the middle of the screen
  // Tip: you may want to define a varibale that holds the number of the line number
}
