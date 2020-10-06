// IDE : Integrated Development Environment

void setup() {
  // width of my monitor screen 2560 px
  // height of my monitor screen 1440 px
  // move Processing window to top left of the computer screen
  surface.setLocation(0, 200);

  // set the window size
  size(800, 600);
}

void draw() {

  // Remove the stroke around square
  noStroke();
  
  // Set fill color for the following rectangle shape
  fill(#ff0000);
  
  // Draw a rectangle
  rect(0, 0, 150, 150);
  
  // enable strokes for the following shape
  strokeWeight(2);
  stroke(#000000);
  fill(#0000ff);
  rect(151, 0, 150, 210);
  
  
  // Draw the 3rd rectangle
  strokeWeight(4);
  stroke(#000000);
  fill(#FAFF00);
  rect(0, 150, 150, 130);
  
}
