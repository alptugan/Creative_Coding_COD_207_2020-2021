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

float strokeW;

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
  strokeW  = 3;
  isDebug = true;
  noLoop();
}


void draw() {
  background(255); 
  noFill();

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
      //generateGrid(x, y, gridSize);
    }
  }
}

void generateGrid(float x, float y, float gridSize) {

  float chanceFac = random(9);

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
  } else if (chanceFac <= 5) {
    // Draw quater circle
    xStart = x + gridSize;
    yStart = y + gridSize;
    xEnd   = gridSize*2;
    yEnd   = gridSize*2;
    drawQuarterCircle(xStart, yStart, xEnd, yEnd);
  } else if (chanceFac <= 6) {
    xStart = x;
    yStart = y + gridSize * 0.5;
    drawHorizontalDashedLine(xStart, yStart);
  } else if (chanceFac <= 7) {
    xStart = x + gridSize * 0.5;
    yStart = y;
    drawVerticalDashedLine(xStart, yStart);
  } else if (chanceFac <= 8) {
    xStart = x;
    yStart = y;
    xEnd   = x + gridSize;
    yEnd   = y + gridSize;
    drawDiagonalDashedLine(xStart, yStart, xEnd, yEnd);
  } else if (chanceFac <= 9) {
    xStart = x + gridSize;
    yStart = y;
    xEnd   = x + gridSize*2;
    yEnd   = y + gridSize;
    drawDiagonalDashedLine2(xStart, yStart, xEnd, yEnd);
  }
}


void drawStraightLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  //strokeCap(PROJECT);
  strokeWeight(strokeW);
  stroke(0, 255);

  line(x1, y1, x2, y2);
}

void drawHorizontalDashedLine(float x1, float y1) {
  strokeWeight(strokeW);
  stroke(0, 255);

  for (float x = x1; x < x1 + gridSize; x += 6) {
    stroke(-(int(x)+int(y1)>>1 & 1));
    line(x, y1, x+6, y1);
  }
}

void drawVerticalDashedLine(float x1, float y1) {
  strokeWeight(strokeW);
  stroke(0, 255);

  for (float y = y1; y < y1 + gridSize; y += 6) {
    stroke(-(int(y)+int(x1)>>1 & 1));
    line(x1, y, x1, y + 6);
  }
}

void drawDiagonalDashedLine(float x1, float y1, float x2, float y2) {
  strokeWeight(strokeW);
  stroke(0, 255);
  
  pushMatrix();
  translate(x1, y1);
  rotate(radians(45));
  for (float x = x1; x < x1 + gridSize + gridSize*0.4; x += 6) {
    stroke(-(int(x)+int(y1)>>1 & 1));
    line(x - x1, 0, x+6 - x1, 0);
  }
  popMatrix();
}

void drawDiagonalDashedLine2(float x1, float y1, float x2, float y2) {
  strokeWeight(strokeW);
  stroke(0, 255);
  
  pushMatrix();
  translate(x1, y1);
  rotate(radians(90+45));
  for (float x = x1; x < x1 + gridSize + gridSize*0.4; x += 6) {
    stroke(-(int(x)+int(y1)>>1 & 1));
    line(x - x1, 0, x+6 - x1, 0);
  }
  popMatrix();
}

void drawDiagonalLine(float x1, float y1, float x2, float y2) {
  // Set stroke thickness
  //strokeCap(PROJECT);
  strokeWeight(strokeW);
  stroke(0, 255);

  // Draw Line
  line(x1, y1, x2, y2);
}

void drawQuarterCircle(float x1, float y1, float x2, float y2) {
  //arc(0, 0, gridSize * 2, gridSize * 2, 0, HALF_PI);
  strokeWeight(strokeW);
  stroke(0, 255);
  arc(x1, y1, x2, y2, PI, PI+HALF_PI);
}


void mousePressed() {
  loop();
}

void mouseReleased() {
  noLoop();
}
