PImage img;
PImage imgUrl;
float ratio;

void setup() {
  surface.setLocation(100,100);
  size(800, 800);
  img = loadImage("US-Astronauts-Head-Back-To-The-Moon.jpg");
  
  /// Load image from url
  
  ratio = float(img.height) / float(img.width);
  imgUrl = loadImage("https://cdn.spacetelescope.org/archives/images/wallpaper2/heic2007a.jpg");
}
void draw() {
  background(102);
  
  tint(255,255);
  image(img, 0, 0, 800, 800 * ratio);
  
  // Image from url
  tint(255,255,255,200);
  image(imgUrl, 0, 0);
}
