float px;
float py;

float x;
float y;

void setup() {
  surface.setLocation(0, 0);
  size(1080, 1080);
  background(0);

  smooth(); 
  noLoop();
}


void draw() {
  background(0);
  stroke(255);
  strokeWeight(2);


  for (int i = 0; i < width; i = i + 10) {

    px = x;
    py = y;

    x = i;
    y = height * 0.5 + noise(i * 0.00001) * 50;
    //ellipse(x, y, 10, 10);
    line(px, py, x, y);
  }
}

void mousePressed() {
  noiseSeed(int(random(999999)));
  loop();
}

void mouseReleased() {
  noLoop();
}
