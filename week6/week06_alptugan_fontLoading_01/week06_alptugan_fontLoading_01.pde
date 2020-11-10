// declare font variable
PFont font;
PFont font2;

void setup() {
  surface.setLocation(100, 100);
  size(800, 120);
  smooth();

  // 
  font = loadFont("AdihausDIN-Bold-48.vlw");
  font2 = loadFont("AdobeGurmukhi-Bold-48.vlw");
}
void draw() {
  background(102);

  // set the font
  textFont(font);
  // font size
  textSize(36);
  // Write text using the font set above
  text("That’s one small step for man...", 25, 60);

  textFont(font2);
  textSize(18);
  text("That’s one small step for man...", 27, 90);
}
