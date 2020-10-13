// this is comment for the following codes snippet


// runs only once the program compiled
void setup() {
  // set window location to 1st monitor
  surface.setLocation(100,200);
  // Set the size of my processing window
  size(800, 600);
  background(#ffffff);
}


// Runs until program stops
void draw() {
  
  // draw rectangle x = 0 and y  = 0position
  // width = 1000
  // height = 200
  
  /*
  fill(#ff0000);
  noStroke();
  stroke(#00ff00);
  strokeWeight(6);
  */
  
  noFill();
  
  rect(random(0, width), random(0, height), 100, 100);
}
