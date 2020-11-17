// declare font variable
PFont font;
PFont font2;

void setup() {
  surface.setLocation(100, 100);
  size(800, 800);
  smooth();

  // 
  font = loadFont("AdihausDIN-Bold-48.vlw");
  font2 = loadFont("AdobeGurmukhi-Bold-48.vlw");
}
void draw() {
  background(102);
  
  fill(0,0,0);
  // set the font
  textFont(font);
  // font size
  textSize(36);
  // Write text using the font set above
  text("That’s one small step for man...", 30, 60);
  
  pushMatrix();
  fill(255,0,0);
  textFont(font2);
  textSize(18);
  translate(30, 90);
  rotate(radians(90));
  text("That’s one small step for man...", 0, 0);
  popMatrix();
}
