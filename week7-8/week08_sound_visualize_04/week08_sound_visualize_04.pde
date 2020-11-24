// import library
import ddf.minim.*;

// declare sound engine
Minim minim;

//declare audio player
AudioPlayer player;

float x;
float y;
float xEnd;
float yEnd;

void setup()
{
  surface.setLocation(100,100);
  size(800, 800);
  
  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);
  
  // loadFile will look in all the same places as loadImage does.
  // this means you can find files that are in the data folder and the 
  // sketch folder. you can also pass an absolute path, or a URL.
  player = minim.loadFile("/Users/alptugan/oF/assets/loop2-120bpm.wav");
  
  
  x = width / 2;
  y = 0;
  
  xEnd = width / 2;
  yEnd = height;
  
  println(player.bufferSize());
  
  background(0);
}

void draw()
{
  background(0);
  
  //fill(0,0,0,10);
  //rect(0,0,width,height);
    
  // buffer value
  float bufLeft = abs(player.left.get(1000) * 10);
  float bufRectRight = abs(player.right.get(100) * 1000);
  
  
  for(int i = 0; i < player.bufferSize(); i = i + 1) {
    float freqBand = abs(player.right.get(i) * 1000);
    fill(255,255,255,255);
    noStroke();
    circle(width*0.5, height*0.5,freqBand);
  }
  
  /*if(bufLeft > 0.7) {
    strokeWeight(1);
    stroke(255,0,0);
    for(int i = 0; i < 40; i = i + 1) {
      circle(width * 0.5, height * 0.5, abs(player.right.get(40 + i * 4) * 100) + (i * 30)); 
    }
  }
  
  strokeWeight(bufLeft);
  
  stroke(0,200,0);
  line(x, y, xEnd, yEnd);
  
  strokeWeight(1);
  stroke(150,200,0);
  noFill();
  rect(width * 0.5 - bufRectRight * 0.5, height *0.5  - bufRectRight * 0.5, bufRectRight, bufRectRight );
  */
  
  
}
void keyPressed()
{
  if(key == 'l') {
   player.loop(); 
  }
  
  if(key == 'p' ) {
   player.play(); 
  }
  
  if(key == 's') {
   player.pause(); 
  }
}
