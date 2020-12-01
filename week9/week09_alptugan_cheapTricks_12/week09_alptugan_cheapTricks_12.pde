PImage img;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(0);
  img = loadImage("palet.jpg");
}



void draw() {

  background(0);
  for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      float xpos1 = random(x*10);
      float xpos2 = width - random(y*10);
      color c = img.get(x, y);
      stroke(c);
      line(xpos1, 0, xpos2, height);
    }
  }
}

void mousePressed() {
  saveFrame("x-####.jpg");
}
