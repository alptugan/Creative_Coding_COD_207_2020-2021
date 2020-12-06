boolean isReverseDiagonal;

float xStart;
float yStart;
float xEnd;
float yEnd;

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
 
}


void draw() {
  //background(0,0,0,10); 
  drawDiagonalLine(xStart, yStart, xEnd, yEnd);
}

void drawDiagonalLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  strokeWeight(2);
  
  // Draw Line
  line(x1, y1, x2, y2); 
}
