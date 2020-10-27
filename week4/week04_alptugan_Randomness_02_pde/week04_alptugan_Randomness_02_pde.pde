int step;
float lastx;
float lasty;
float y;
int borderx;
int bordery;

void setup() {
  surface.setLocation(100, 200);
  
  size(800, 800);
  background(255);
  
  step      = 10;    // resolution of the line
  lastx     = 0;     // the last x position of the line
  lasty     = 0;     // the last y position of the line
  y         = 50;    // the max. y position of the line
  borderx   = 0;     // margin value from left & right edges
  bordery   = 300;   // margin value from top & bottom edges
  
  // Makes draw function to run only once
  noLoop();
}

void draw() {
  // set stroke size
  strokeWeight(4);
  
  
  for (int x = borderx; x <= width - borderx; x = x + step) {
    
    y = bordery + random(height - 2*bordery);
    
    if (lastx > 0) { 
      line(x, y, lastx, lasty);
    }
    
    lastx = x; 
    lasty = y;
  }
}
