// Declaring the variable
PImage img;
PImage img2;


void setup() {

  surface.setLocation(100, 100);

  size(800, 800);

  // Assign the value of the image variable
  img = loadImage("test.jpg");
  img2 = loadImage("US-Astronauts-Head-Back-To-The-Moon.jpg");
}
void draw() {
  background(102);

  imageMode(CORNER);

  // draw the loaded image on Processing windows
  // using the following "image" function

  image(img2, 0, 0);
  image(img, 0, 0);
}
