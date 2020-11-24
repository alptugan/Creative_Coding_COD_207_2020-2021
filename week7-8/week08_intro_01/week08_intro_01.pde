float x;
float y;
float xC;
float rSize;
float counter;

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
  
  // update the value of counter
  counter = counter + 0.001;
  
  // -1,1 
  // will -1080, 1080
  // we want to map the output value: 0 - 1080
  x = sin(counter) * width;
  
  // map the input value 
  // 0 - 1080
  xC = map(x, -width, width, 0, width);
  
  noStroke();
  fill(0);
  
  rectMode(CENTER);
  
  rect(xC, y, rSize, rSize);
}
