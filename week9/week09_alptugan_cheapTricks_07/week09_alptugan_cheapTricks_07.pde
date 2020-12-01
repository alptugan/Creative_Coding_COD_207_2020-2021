float beginX; // Initial x-coordinate
float beginY; // Initial y-coordinate

float endX; // Final x-coordinate
float endY = 80.0; // Final y-coordinate

float distX; // X-axis distance to move
float distY; // Y-axis distance to move

float exponent = 0.5; // Determines the curve
float x = 0.0;
float y = 0.0;
float step = 0.005;
float pct = 0.0;
int direction = 1;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(0);
  noStroke();

  beginX = 0;
  beginY = 0;

  endX = width;
  endY = height;

  distX = endX - beginX;
  distY = endY - beginY;
}



void draw() {
  fill(0, 1);
  rect(0, 0, width, height); 
  pct += step * direction;

  if ((pct > 1.0) || (pct < 0.0)) {
    direction = direction * -1;

    beginX = random(width);
    beginY = random(height);

    endX = random(width);
    endY = random(height);

    distX = endX - beginX;
    distY = endY - beginY;
  }

  if (direction == 1) {
    x = beginX + (pct * distX);
    float e = pow(pct, exponent);
    y = beginY + (e * distY);
  } else {
    x = beginX + (pct * distX);
    float e = pow(1.0-pct, exponent*2);
    y = beginY + (e * -distY) + distY;
  }
  fill(255);
  ellipse(x, y, pct*20, pct*20);
}
