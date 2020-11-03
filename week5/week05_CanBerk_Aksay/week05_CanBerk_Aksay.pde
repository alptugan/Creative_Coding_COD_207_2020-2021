int tileSize;

int grayCol;

void setup() {
  //width of my monitor screen 2568 px
  //height of my monitor screen 1440 px
  //move Processing window to top left of the computer screen
  surface. setLocation(0, 200);

  //set window size
  size(800, 800);

  tileSize = 50;
  background(255);

  noLoop();

  grayCol = 0;
}  


void draw() {
  background(255);
  noStroke();
  for (int i = 0; i < width; i = i + tileSize) {

    for (int j = 0; j < height; j = j + tileSize) {
      float rnd = random(1);

      if (rnd > 0.5) {
        grayCol = 0;
      } else {
        grayCol = 255;
      }

      
       
       
       fill(grayCol);
       rect(i, j, tileSize, tileSize);
    }
  }
}
