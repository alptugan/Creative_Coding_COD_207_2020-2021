// https://www.moma.org/calendar/exhibitions/305
// Rules
// 1- Grid must be in fixed size
// 2- All grid must include 2 random shape
// 3- There must be minimum 4 different shapes

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

  xStart = 0;
  yStart = 0;
  xEnd = width;
  yEnd = height;

  gridSize = 108;

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

      generateGrid(x, y, gridSize);
      generateGrid(x, y, gridSize);
    }
  }
}

void generateGrid(float x, float y, float gridSize) {

  float chanceFac = random(4);
  if (chanceFac <= 1) {
    xStart = x;
    yStart = y;
    xEnd   = x + gridSize;
    yEnd   = y + gridSize;

    drawDiagonalLine(xStart, yStart, xEnd, yEnd);
  } else if ( chanceFac <= 2) {
    xStart = x + gridSize;
    yStart = y;
    xEnd   = x;
    yEnd   = y + gridSize;

    drawDiagonalLine(xStart, yStart, xEnd, yEnd);
  } else if (chanceFac <= 3) {
    // Vertical Line in the middle
    xStart = x + gridSize * 0.5;
    yStart = y;
    xEnd   = x + gridSize * 0.5;
    yEnd   = y + gridSize;
    drawStraightLine(xStart, yStart, xEnd, yEnd);
  } else if (chanceFac <= 4) {
    // Horizontal Line in the middle
    xStart = x;
    yStart = y + gridSize * 0.5;
    xEnd   = x + gridSize;
    yEnd   = y + gridSize * 0.5;
    drawStraightLine(xStart, yStart, xEnd, yEnd);
  }
}


void drawStraightLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  //strokeCap(PROJECT);
  strokeWeight(8);
  stroke(0, 255);

  line(x1, y1, x2, y2);
}

void drawDiagonalLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  //strokeCap(PROJECT);
  strokeWeight(8);
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
