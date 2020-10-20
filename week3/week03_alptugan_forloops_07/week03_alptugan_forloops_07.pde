int gap;
// setup function runs once, when the program starts
void setup() {
  // set window position on screen
  surface.setLocation(0,200);
  
  //Set window size
  size(800,800);
  
  // set background color
  background(#ffffff);
  gap = 3;
}


// Draw function runs until the program stops
void draw() {
  
  strokeCap(PROJECT);
  strokeWeight(4);
  stroke(0, 0, 0);
  // we want to draw 200 px long horizontal lines;
  // we know line(x1,y1,x2,y2)
  // So, in order to draw 200 px long line
  // |x2 - x1| = 200 or vice versa as follows;
  /*line(0, 0 * 0, 200, 0 * 0);
  line(0, 20 * 1, 200, 20 * 1);
  line(0, 20 * 2, 200, 20 * 2);
  line(0, 20 * 3, 200, 20 * 3);
  line(0, 20 * 4, 200, 20 * 4);
  */
  for(int i = 0; i < 50; i = i + 1) {
    // do something here...
    
    if(i % 2 == 0) {
      stroke(0,0,0);
      line(0, gap * i, 200, gap * i);
    }else{
      stroke(255,0,0);
      line(0, gap * i, 200, gap * i);
    }
    
  }
  
  
}
