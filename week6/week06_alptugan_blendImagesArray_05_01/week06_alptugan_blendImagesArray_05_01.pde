PImage[] images;

void setup() {
  surface.setLocation(100, 100);
  size(800, 800);

  images = new PImage[5];

  /// Load image from url
  // Loading Images into an Array
  images[0] = loadImage("heic2007a.jpg");
  images[1] = loadImage("milky-way-2695569_960_720.jpg");
  images[2] = loadImage("Screen Shot 2020-11-09 at 21.24.21.jpg");
  images[3] = loadImage("spacee-2060x1288.jpg");
  images[4] = loadImage("ataturk.jpg");
}

void draw() {
  background(0);

  for (int i = 0; i < images.length; i++) {
    tint(255, 255, 255, 100);
    image(images[i], 0, 0, width, height);
  }
}
