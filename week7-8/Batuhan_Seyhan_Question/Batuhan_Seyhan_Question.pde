float xmove;
float xBornPos;
boolean isShowed;


void setup() {
  surface.setLocation(100, 100);
  size(800, 800);
  xmove = 0;
  isShowed = false;
}

void draw() {
  background(255); 

  xmove = (width/2) + sin(millis() * 0.0008) * (width / 2);

  fill(0);
  circle(xmove, height/2, 100);

  if (xmove > 400 && xmove < 500 && isShowed == false) {
    isShowed = true;
    xBornPos = xmove;
  }

  if (isShowed == true) {
    fill(255, 0, 0);
    circle(xBornPos, height/2 - 150, 10);
  }
}
