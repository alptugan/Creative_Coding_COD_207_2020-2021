// The following variable will hold the random() function's values
float randomGen;
float rndRadGen;

// IDE: Integrated Development Environment

float x;
float y;
float rad;
int gap;
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
  frameRate(4);
  
  x = width / 2;
  y = height / 2;
  
  gap = 40;
}

void draw() {
  //background(255, 255, 255);

  randomGen = int(random(0, 4));

  if (randomGen == 0) {
    /*fill(#333333);
    textSize(48);
    text("It's 0", 10, 50);*/
    // Move up
    y = y - gap;
    fill(#2ecc71);
  }else if(randomGen == 1) {
    /*fill(#033333);
    textSize(48);
    text("It's 1", 10, 50);*/
    fill(#e67e22);
    y = y + gap;
  }else if(randomGen == 2) {
    /*fill(#331133);
    textSize(48);
    text("It's 2", 10, 50);*/
    fill(#c0392b);
    x = x - gap;
  }else if(randomGen == 3) {
    /*fill(#3ff333);
    textSize(48);
    text("It's 3", 10, 50);*/
    fill(#3498db);
    x = x + gap;
  }
  noStroke();
  
  circle(x, y, gap);
  /*rndRadGen = random(10, 100);
   
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
   rect(width/2, height/2, rndRadGen + randomGen, rndRadGen + randomGen);*/
}
