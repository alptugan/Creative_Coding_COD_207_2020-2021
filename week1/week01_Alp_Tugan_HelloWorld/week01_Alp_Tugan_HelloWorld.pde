void setup() {
  surface.setLocation(0, 0);
  
  // Set the size of the window
  size(800, 600);
  
  // Set the bacground color
 background(#FFFFFF);
 
}

void draw() {
  
  // Set the fill color of the following shape
  fill(#FFCC00);
  
  // Disable the stroke around the foloowing shape
  noStroke();
  
  // Draw rectangle
  rect(0, 0, 100, 300);
  
  
  // Set stroke color to black
  stroke(#080808);
  
  // Set the stroke size
  strokeWeight(4);
  
  // Set the fill color of the following shape
  fill(#F02E45);
  // Draw the second rectangle
  rect(100, 0, 150, 150);

  
   // Disable the stroke around the foloowing shape
  noStroke();
  // Set the fill color of the following shape
  fill(#000000);
  // Draw the second rectangle
  rect(250, 0, 250, 180);
  
}
