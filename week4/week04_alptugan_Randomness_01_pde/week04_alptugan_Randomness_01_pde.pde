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

  // 0 - 255
  r = 46;
  g = 204;
  b = 113;
  a = 255;

  rnd = 100;

  xpos = width * 0.5;
  ypos = height * 0.5;

  //frameRate(5);
  background(255);
}

void draw() {

  // Set background color
  //background(255);

  rnd = random(10, 40);

  if ( rnd < 10) {
    a = int(random(20, 50));
  } else if ( rnd < 20) {
    a = int(random(50, 100));
  } else if ( rnd < 40) {
    a = int(random(100, 150));
  }

  xpos = random(0, width);
  ypos = random(0, height);


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
