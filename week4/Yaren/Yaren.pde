// setup function runs once, when the program starts
void setup() {
  // set window position on screen
  surface.setLocation(0, 200);

  //Set window size
  size(800, 800);

  // set background color
  background(#86A1FF);
}


// Draw function runs until the program stops
void draw() {
  strokeCap(PROJECT);
  strokeWeight(4);
  stroke(0, 0, 0);

  // The size of my pattern is 180 x 210 px
  
  for (int i = 0; i < 2; i = i + 1) {
    // To see the responce from Processing
    stroke(#E8E26E);
    pushMatrix();
    translate(0, 230 * i);
    line(10 , 5*4, 190, 5 *4);
    line(35 , 5 *8, 165, 5 *8);
    line(70, 5 *12, 130, 5 *12);
    line(105, 5 *16, 95, 5 *16);

    line(105, 5 *34, 95, 5 *34);
    line(70, 5*38, 125, 5 *38);
    line(35, 5 * 42, 155, 5 *42);
    line(10, 5 * 46, 185, 5 *46);

    line(10, 5 *10, 10, 5 *40);
    line(25, 5 *15, 25, 5 *35);
    line(40, 5 *20, 40, 5 *30);
    line(55, 5 *25, 55, 5 *26);

    line(190, 5 *10, 190, 5 *40);
    line(175, 5 *15, 175, 5 *35);
    line(160, 5 *20, 160, 5 *30);
    line(145, 5 *24, 145, 5 *26);

    // Draw the 1st rectangle
    fill(#E8E26E);
    rect(75, 100, 50, 50);
    popMatrix();
  }
  
  /*for (int i = 0; i < 4; i = i + 1) {
    // To see the responce from Processing
    stroke(#E8E26E);
    pushMatrix();
    translate(200 * i, 230);
    line(10 , 5*4, 190, 5 *4);
    line(35 , 5 *8, 165, 5 *8);
    line(70, 5 *12, 130, 5 *12);
    line(105, 5 *16, 95, 5 *16);

    line(105, 5 *34, 95, 5 *34);
    line(70, 5*38, 125, 5 *38);
    line(35, 5 * 42, 155, 5 *42);
    line(10, 5 * 46, 185, 5 *46);

    line(10, 5 *10, 10, 5 *40);
    line(25, 5 *15, 25, 5 *35);
    line(40, 5 *20, 40, 5 *30);
    line(55, 5 *25, 55, 5 *26);

    line(190, 5 *10, 190, 5 *40);
    line(175, 5 *15, 175, 5 *35);
    line(160, 5 *20, 160, 5 *30);
    line(145, 5 *24, 145, 5 *26);

    // Draw the 1st rectangle
    fill(#E8E26E);
    rect(75, 100, 50, 50);
    popMatrix();
  }*/
}
