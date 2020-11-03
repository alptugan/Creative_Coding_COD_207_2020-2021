int gapX;
int gapY;
void setup() {
  surface.setLocation(0, 200);

  size(800, 800);

  background(#ffffff);

  gapX = 80;
  gapY = 80;

  noLoop();
}



void draw() {
  strokeCap(PROJECT);
  strokeWeight(2);
  stroke(0, 0, 0);
  background(#ffffff);
  
  pushMatrix();
  translate(gapX/2,gapY/2);
  
  
  for (int i = 0; i < width; i = i + gapX) {
    for (int j = 0; j < height; j = j + gapY) {
      float rnd = random(1);

      if (rnd > 0.5) {
        pushMatrix() ;
        translate(i, j) ;
        fill(255, 255, 255);
        translate(-gapX/2, -gapY/2) ;
        rect(0, 0, gapX, gapY) ;
        triangle(40, 35 - 35, 30 - 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 55 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 75 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 90 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        popMatrix() ;
      } else {
        float rnd2 = random(1);
        
        pushMatrix();
        translate(i, j);
        
        if(rnd2 > 0.2) {
          rotate(radians(90));
        }else{
          rotate(radians(-90));
        }
        
        
        
        translate(-gapX/2, -gapY/2) ;
        fill(255, 255, 255);
        rect(0, 0, gapX, gapY) ;
        triangle(40, 35 - 35, 30 - 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 55 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 75 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        triangle(40, 90 - 35, 30- 30, 105 - 35, 110 - 30, 105 - 35) ;
        popMatrix();
      }
    }
  }
  
  popMatrix();
}
