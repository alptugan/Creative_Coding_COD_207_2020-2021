PImage img;
float fx;
float fy;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(255);

  img = loadImage("/Users/alptugan/Pictures/inspirations/25299631_1628926410501427_2327392292180262690_o.jpg");
}



void draw() {
  //image(img, mouseX, mouseY);


  if (fx + img.width < width) {
    fx = fx + random(2);
    fy = noise(millis() * 0.0005) * 30;
  }
  
  
  int ix = mouseX - img.width/2; 
  int iy = mouseY - img.height/2; 
  image(img, fx, fy);
}
