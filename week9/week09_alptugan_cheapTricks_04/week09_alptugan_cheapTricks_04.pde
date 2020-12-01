float thickness;
float mappedRad;
float mappedAlpha;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(255);
  thickness = 1;
  mappedAlpha = 0;
}



void draw() {
  thickness = dist(mouseX, mouseY, pmouseX, pmouseY);
  mappedRad = map(thickness, 0, width, 1, 200);

  mappedAlpha = map(thickness, 0, width, 10, 255);
  
  if (mousePressed == true) {
    fill(0, mappedAlpha);
  } else {
    fill(255, mappedAlpha);
  }
  for (int i = 0; i < 6; i++) {
    ellipse(mouseX + i*i, mouseY + sin(radians(i)), mappedRad, mappedRad);
  }
}
