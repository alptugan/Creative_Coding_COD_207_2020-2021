PImage[] images;
void setup() {
  surface.setLocation(100, 100);
  size(800, 800);
  images = new PImage[4];

  /// Load image from url
  // Loading Images into an Array
  images[0] = loadImage("heic2007a.jpg");
  images[1] = loadImage("milky-way-2695569_960_720.jpg");
  images[2] = loadImage("Screen Shot 2020-11-09 at 21.24.21.jpg");
  images[3] = loadImage("spacee-2060x1288.jpg");

}
void draw() {
  background(0);

  for (int i = 0; i < images.length; i++) {
    if(i == 0) {
      blendMode(SCREEN);
    }else if(i == 1){
      blendMode(LIGHTEST);
    }else if(i == 2) {
      //blendMode(SUBTRACT);
    }
    
    image(images[i], 0, 0, width, height);
  }
}

void mousePressed() {
  
}
