float rnd;

float xpos;
float ypos;

int r;
int g;
int b;
int a;

void setup() {
  surface.setLocation(100, 200);

  size(800, 800);

  r = 52;
  g = 152;
  b = 219;
  a = 255;
}

void draw() {

  rnd = int(random(10, 100));

  xpos = random(0, width);
  ypos = random(0, height);

  a = int(random(0, 50));

  // Set background color
  //background(255);

  // set stroke size
  noStroke();

  fill(r, g, b, a);

  ellipse(xpos, ypos, rnd, rnd);
}

void mousePressed() {
  r = int(random(0, 255));
  g = int(random(0, 255));
  b = int(random(0, 255));
}
