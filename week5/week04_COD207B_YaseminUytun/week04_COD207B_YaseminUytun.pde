int tileSize;


void setup() {
  surface.setLocation(0, 0);
  background (255, 204, 0);
  size(800, 800);


  tileSize = 50;
  noLoop();
}

// CMD + T MAC OS
// CTRL + T on windows OS

void draw() {
  background (255, 204, 0);
  
  noStroke();
  /*if(mousePressed == true) {
    tileSize = mouseY;
  }*/
  
  //println(mouseX);
  // isosceles triangle
  
  
  // Custom function to draw triangle
  //
  
  for (int i = 0; i < width; i = i + tileSize) {
    for (int j = 0; j < height; j = j + tileSize) {
      pushMatrix();
      fill(100); // red
      
      float rnd = random(1);
      translate(i,j);
      
      if(rnd > 0.5) {
        triangleRectCorner(0, 0, tileSize, -tileSize);
      }else{
        triangleRectCorner(0, tileSize, tileSize, tileSize);
      }
      
      popMatrix();
    }
  }

  
  // #024ccff using hexadecimal
  // r,g,b,a 0-255
  // grayscale 0-255

}


// ---------------------------------------------
void triangleRectCorner(float xStart, float yStart, float xEnd, float yEnd) {

  triangle(xStart, yStart, xEnd, yStart-yEnd, xStart+xEnd, yStart);
}
