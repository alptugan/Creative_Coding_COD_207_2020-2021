float thickness;    // thickness
float mappedThck;   // mapped thickness
float mappedAlpha;  // maapped Alpha value

float speed;
float curX;
float curY;
float preX;
float preY;

// simple drawing app
void setup() {
  size(1080, 1080);
  surface.setLocation(0, 0);
  background(255);

  thickness = 1;
  mappedAlpha = 0;

  speed = 0.01;
  curX = 0;
  curY = 0;
  preX = 0;
  preY = 0;
}



void draw() {
  // dist(distance) function measures the ddistance beween supplied two points
  //thickness   = dist(mouseX, mouseY, pmouseX, pmouseY);
  
  preX = curX;
  preY = curY;
  
  thickness = random(1,200);
  speed = random(1,100);
  
  curY = curY + speed;


  mappedThck  = map(thickness, 0, width, 1, 150);

  mappedAlpha = map(thickness, 0, width, 100, 255);

   stroke(0, mappedAlpha);


  strokeWeight(mappedThck);
  
    
  if (curY > height) {
    curY = 0;
    curX = curX + 40;
    
    if(curX > width) {
      background(255, 255, 255);
      curY = 0;
      curX = 0;
    }
  }else{
    line(curX, curY, preX, preY);
  }
  
}

void keyPressed() {

  if (key == 'c') {
    background(255, 255, 255);
  }
}
