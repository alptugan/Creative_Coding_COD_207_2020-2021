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

  gridSize = 108*0.5;

  isDebug = true;
  noLoop();
}


void draw() {
  background(255); 

  for (float x = 0; x < width; x += gridSize) {
    for (float y = 0; y < height; y+= gridSize) {
      // debug Lines
      if (isDebug == true) {
        stroke(0, 0, 0, 30);
        strokeWeight(1);
        if (y == 0) {
          line(x, 0, x, height);
        }
        if (x == 0) {
          line(0, y, width, y);
        }
      }
    }
  }
  
  //randomSeed(10);
  for (float x = 0; x < width; x += gridSize) {
    for (float y = 0; y < height; y+= gridSize) {
      
      float chanceFac = random(1);
      if (chanceFac >= 0.5) {
        isReverseDiagonal = true;
      } else {
        isReverseDiagonal = false;
      }

      // Chance factor algorithm
      if (isReverseDiagonal) {
        xStart = x;
        yStart = y;
        xEnd   = x + gridSize;
        yEnd   = y + gridSize;
      } else {
        xStart = x + gridSize;
        yStart = y;
        xEnd   = x;
        yEnd   = y + gridSize;
      }

      drawDiagonalLine(xStart, yStart, xEnd, yEnd);
    }
  }
}

void drawDiagonalLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  strokeWeight(12);
  stroke(0, 255);

  // Draw Line
  line(x1, y1, x2, y2);
}

void mousePressed() {
 loop();
}

void mouseReleased() {
  noLoop();
}
