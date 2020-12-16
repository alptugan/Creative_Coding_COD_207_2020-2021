PGraphics pg;
PGraphics pg2;

boolean hideOne;
void setup() {
  
  surface.setLocation(0,0);
  
  size(1080, 1080);
  pg = createGraphics(1080, height/2);
  pg2 = createGraphics(1080, height/2);
  
  hideOne = false;
}

void draw() {
  background(0);
  pg.beginDraw();
    //pg.background(100);
    pg.stroke(255);
    pg.line(20, 20, mouseX, mouseY);
  pg.endDraw();
  
  pg2.beginDraw();
    pg2.background(100);
    pg2.stroke(255);
    pg2.circle(width*0.5, height*0.5, 100);
  pg2.endDraw();
  
  if(hideOne == false) {
    image(pg, 9, 30); 
  }
  
  //image(pg, 51, 30);
}

void keyPressed() {
  
 if(key == '1') {
   if(hideOne == false) {
     hideOne = true;
   }else{
     hideOne = false;
   }
   
   
   
 }
}
