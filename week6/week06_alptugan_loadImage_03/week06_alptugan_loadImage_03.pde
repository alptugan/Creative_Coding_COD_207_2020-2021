PImage img;
float ratio;

void setup() {
  size(800, 800);

  surface.setLocation(100, 100);

  img = loadImage("US-Astronauts-Head-Back-To-The-Moon.jpg");
  
  ratio = float(img.height) / float(img.width);
}
void draw() {
  background(102);

  image(img, 0, 0, 800, 800 * ratio);
}
