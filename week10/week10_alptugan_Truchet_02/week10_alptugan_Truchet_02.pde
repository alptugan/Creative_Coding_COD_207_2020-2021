boolean isReverseDiagonal;
boolean isDebug;

float xStart;
float yStart;
float xEnd;
float yEnd;

float gridSize;

void setup() {
  surface.setLocation(0, 0);
  size(1080, 1080);
  background(255);

  smooth(); 

  isReverseDiagonal = false;
  xStart = 0;
  yStart = 0;
  xEnd = width;
  yEnd = height;
  
  gridSize = 100;
  
  isDebug = true;
}


void draw() {
  //background(0,0,0,10); 

  for (float x = 0; x < width; x += gridSize) {
    for (float y = 0; y < height; y+= gridSize) {
      // debug Lines
      if(isDebug == true) {
       stroke(0, 0, 0, 100);
       strokeWeight(1);
       line(x, y, x + gridSize, y + gridSize); 
      }
      xStart = x;
      yStart = y;
      xEnd   = x + gridSize;
      yEnd   = y + gridSize;
      drawDiagonalLine(xStart, yStart, xEnd, yEnd);
    }
  }
  
}

void drawDiagonalLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  strokeWeight(2);
  stroke(0, 255);

  // Draw Line
  line(x1, y1, x2, y2);
}
