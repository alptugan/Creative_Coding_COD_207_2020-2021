float thickness;
float mappedThck;
float mappedAlpha;

// simple drawing app
void setup() {
    size(1080,1080);
    surface.setLocation(0, 0);
    background(255);
    thickness = 1;
    mappedAlpha = 0;
}



void draw() {
  thickness = dist(mouseX, mouseY, pmouseX, pmouseY);
  mappedThck = map(thickness, 0, width, 1, 200);
  
  mappedAlpha = map(thickness, 0, width, 10, 255);
  if(mousePressed == true) {
    stroke(0,mappedAlpha); 
  }else{
    stroke(255,mappedAlpha);
  }
  
  
  strokeWeight(mappedThck);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
