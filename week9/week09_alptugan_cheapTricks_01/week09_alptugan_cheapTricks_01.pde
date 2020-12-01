// simple drawing app
void setup() {
    size(1080,1080);
    surface.setLocation(0, 0);
    background(255);
}



void draw() {
  if(mousePressed == true) {
    stroke(0); 
  }else{
    stroke(255);
  }
  
  line(mouseX, mouseY, pmouseX, pmouseY);
}
