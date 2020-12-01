float thickness;
float mappedRad;
float mappedAlpha;

float x;
float y;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(255);
  thickness = 1;
  mappedAlpha = 0;
}



void draw() {
  
  x = mouseX * cos(radians(millis()));
  y = mouseY * sin(radians(millis()));
  
  thickness = dist(mouseX, mouseY, pmouseX, pmouseY);
  mappedRad = map(thickness, 0, width, 1, 240);

  mappedAlpha = map(thickness, 0, width, 10, 255);
  
  if (mousePressed == true) {
    fill(0, mappedAlpha);
  } else {
    fill(255, mappedAlpha);
  }
  
  translate(width*0.5, height*0.5);
  for (int i = 0; i < 6; i++) {
    ellipse(x + i*i, y + sin(radians(i)), mappedRad, mappedRad);
  }
}
