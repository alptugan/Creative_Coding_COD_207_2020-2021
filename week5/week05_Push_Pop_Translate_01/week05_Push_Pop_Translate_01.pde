

int gapX;
int gapY;

void setup() {
  surface.setLocation(0, 200);

  size(800, 800);

  background(#ffffff);

  gapX = 80;
  gapY = 80;
}

void draw() {
  background(#ffffff);

  pushMatrix();
  //
  translate(width/2,height/2) ;
  rotate(radians(millis() * 0.5));
  translate(-gapX/2, -gapY/2) ;
  fill(255, 255, 255);
  rect(0, 0, gapX, gapY) ;
  
  triangle(40, 35 - 35, 30 - 30, 105 - 35, 110 - 30, 105 - 35) ;
  triangle(40, 55 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
  triangle(40, 75 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
  triangle(40, 90 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
  popMatrix();
}
