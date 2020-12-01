PImage img;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(255);

  img = loadImage("/Users/alptugan/Pictures/inspirations/25299631_1628926410501427_2327392292180262690_o.jpg");
}



void draw() {
  image(img, mouseX, mouseY);

  /*int ix = mouseX - img.width/2; 
  int iy = mouseY - img.height/2; 
  image(img, ix, iy);*/
}
