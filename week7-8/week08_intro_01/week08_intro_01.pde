float x;
float y;
float rSize;

float counter;
float xC;
float mappedMx;

void setup() {
  // set window position
  surface.setLocation(0,0);
  
  // set window size
  size(1080,1080);
  
  rSize = 100;
  x = width * 0.5;
  y = height * 0.5;
}


void draw() {
  // set bg color
  background(255,255,255,255);
  
  mappedMx = map(mouseX, 0, 1080, 0, 0.1);
  
  // update the value of counter
  counter = counter + mappedMx;
  
  // -1,1 
  // will -1080, 1080
  // we want to map the output value between: 0 - 1080
  x = sin(counter) * width;
  
  xC = map(x, -1080, 1080, 100, 1080 - 100);
  
  noStroke();
  fill(0);
  
  rectMode(CENTER);
  
  rect(xC, y, rSize, rSize);
}
