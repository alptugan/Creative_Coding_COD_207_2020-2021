// Declare starting point of the lines
int xStart;
int yStart;
int xEnd;
int yEnd;

// Declare the variable that holds the horizontal gap value between lines
int vGap;

// declare the line number variable
int numLines;


// Declare the length of the lines
float lineLen;

float strokeW;

// setup function runs once, when the program starts
void setup() {
  // set window position on screen
  surface.setLocation(0,200);
  
  //Set window size
  size(800,800);
  
  // set background color
  background(#ffffff);
  
  lineLen = 400;
  
  // numLines
  numLines = 30;
  
  // Assign the value of hGap value;
  vGap   = 20;
  

}


// Draw function runs until the program stops
void draw() {
  background(255);
  //lineLen = sin(millis() * 0.001) * 200;
 
  
   // Assign the values to the x and y
  xStart = (width - int(lineLen)) / 2;
  xEnd   = xStart + int(lineLen);
  yStart = (height - (numLines * vGap)) / 2;
  yEnd   = yStart;
  
  // we want to draw 200 px long horizontal lines;
  // we know line(x1,y1,x2,y2)
  // So, in order to draw 200 px long line
  // |x2 - x1| = 200 or vice versa as follows;  
  for(int i = 0; i < numLines; i = i + 1) {
    // To see the responce from Processing
    //println(i);
    line(xStart, yStart + vGap * i, xEnd, yEnd + vGap * i);
  }
}
