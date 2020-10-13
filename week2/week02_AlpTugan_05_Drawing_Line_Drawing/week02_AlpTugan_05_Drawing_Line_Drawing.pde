// Declaring the A point position
int ax;
int ay;

// Declaring the y point position on screen
int bx;
int by;

// Declaring the A2 point position
int ax2;
int ay2;

// Declaring the y point position on screen
int bx2;
int by2;

// runs only once the program compiled
void setup() {
  // set window location to 1st monitor
  surface.setLocation(100, 200);
  // Set the size of my processing window
  size(1080, 1080);
  background(#333333);
  frameRate(60);

  // Assign our variable values
  ax = 300;
  ay = 400;
  bx = 700;
  by = 400;

  // Assign our variable values
  ax2 = ax;
  ay2 = ay + 100;
  bx2 = bx;
  by2 = by + 100;
}


// Runs until program stops
void draw() {

  strokeWeight(4);
  stroke(#ff0000);

  line(ax, ay, bx, by);
  
  stroke(#ff0000);
  // draw second line
  line(ax2, ay2, bx2, by2);
}
