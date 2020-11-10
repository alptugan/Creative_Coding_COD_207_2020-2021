PImage[] images;
float [] tintModes;
float [] r;
float [] g;
float [] b;
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

  tintModes    = new float[4];
  tintModes[0] = random(10, 155);
  tintModes[1] = random(10, 155);
  tintModes[2] = random(10, 155);
  tintModes[3] = random(10, 155);

  r    = new float[4];
  r[0] = random(10, 155);
  r[1] = random(10, 155);
  r[2] = random(10, 155);
  r[3] = random(10, 155);

  g    = new float[4];
  g[0] = random(10, 155);
  g[1] = random(10, 155);
  g[2] = random(10, 155);
  g[3] = random(10, 155);

  b    = new float[4];
  b[0] = random(10, 155);
  b[1] = random(10, 155);
  b[2] = random(10, 155);
  b[3] = random(10, 155);
}
void draw() {
  background(0);

  for (int i = 0; i < images.length; i++) {
    tint(r[i], g[i], b[i], tintModes[i]);
    image(images[i], 0, 0, width, height);
  }
}

void mousePressed() {
  tintModes[0] = random(10, 255);
  tintModes[1] = random(10, 255);
  tintModes[2] = random(10, 255);
  tintModes[3] = random(10, 255);

  r[0] = random(10, 255);
  r[1] = random(10, 255);
  r[2] = random(10, 255);
  r[3] = random(10, 255);
  
  g[0] = random(10, 255);
  g[1] = random(10, 255);
  g[2] = random(10, 255);
  g[3] = random(10, 255);

  b[0] = random(10, 255);
  b[1] = random(10, 255);
  b[2] = random(10, 255);
  b[3] = random(10, 255);
}
