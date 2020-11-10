// The following variable will hold the random() function's values
float randomGen;
float rndRadGen;

// IDE: Integrated Development Environment

void setup() {
  // set the window position
  surface.setLocation(100, 200);

  // Set size of the Processing window
  size(800, 800);

  // There are 3 ways to set fill color
  // set background color
  background(255, 255, 255); // setting r,g,b, values must be in 0 - 255
  // Grayscale color
  //background(255);         // settig grayscale, values must be in 0 - 255
  // Hexadecimal color
  //background(#ffcc00);     // setting hexademical values
}

void draw() {
  background(255, 255, 255);

  randomGen = random(0, width);
  rndRadGen = random(10, 100);

  //println();
  fill(#333333);
  textSize(48);
  text("Generated Random Numbers", 10, 50); 

  textSize(64);
  fill(#ff0000);
  text(randomGen, 10, 120);

  noFill();
  circle(randomGen, height / 2, rndRadGen);
  circle(width/2, randomGen, rndRadGen*2*-1);
  circle(randomGen, height / 5, rndRadGen*5);

  rectMode(CENTER);
  rect(width/2, height/2, (rndRadGen + randomGen) * 0.25, (rndRadGen + randomGen) * 0.25);
  rect(width/2, height/2, (rndRadGen + randomGen) * 0.5, (rndRadGen + randomGen) * 0.5);
  rect(width/2, height/2, rndRadGen + randomGen, rndRadGen + randomGen);
}
