// this is comment for the following codes snippet
int ax;
int ay;
int bx;
int by;

int ax2;
int ay2;
int bx2;
int by2;

// runs only once the program compiled
void setup() {
  // set window location to 1st monitor
  surface.setLocation(100,200);
  
  // Set the size of my processing window
  size(1080, 1080);
  background(#ffffff);
  
  // Set the variable values 
  // Draw 100 px length line
  ax = 200;
  ay = 200;
  bx = 500;
  by = 200;
  
  // Set the second line varibale values
  ax2 = ax;
  ay2 = ay + 50;
  bx2 = bx;
  by2 = by + 50;
}


// Runs until program stops
void draw() {
  
  // Set the stroke Color
  stroke(#000000);
  
  // Set stroke thickness
  strokeWeight(3);
  
  // draw the line
  line(ax, ay, bx, by);
  
  // draw 2nd line
  line(ax2, ay2, bx2, by2);
}
