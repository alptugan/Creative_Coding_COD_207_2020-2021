float daire =10;
float rotasyon = 2;
float aralik = 0.0000130; 
float r;
float hValue;
float hValueConstrained;

void setup() {
  
  surface.setLocation(0,0);
  size(800, 800);
  colorMode(HSB);
  smooth();
  frameRate(60);

}

void draw() {
  hValue = sin(millis() * 0.0001) * 360;
  
  hValueConstrained = constrain(hValue, 0, 360);
  
  background(hValueConstrained, 255, 255, 255);

  
  translate(width / 2, height / 2);
  rotate(radians(rotasyon));
  ellipseMode(CENTER);
  for (int i=0; i<500; i ++) {

    daire = 100 + 300 * sin(millis()/1 * aralik * i);
    r = map(daire, 300, 400, 6, 8);
    //fill(random(255), random(255), random(255), random(255));
    noStroke();
    ellipse(daire * cos(i), daire * sin(i), r, r); 
  }
}
