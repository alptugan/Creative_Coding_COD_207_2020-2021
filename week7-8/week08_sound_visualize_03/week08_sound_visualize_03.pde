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
}

void draw()
{
  background(0);

    
  // buffer value -1, 1 
  float bufLeft = abs(player.left.get(1000) * 10);
  float bufRectRight = abs(player.right.get(100)* 1000);
  
  strokeWeight(bufLeft);
  
  stroke(0,200,0);
  line(x, y, xEnd, yEnd);
  
  strokeWeight(1);
  stroke(150,200,0);
  noFill();
  rect(width * 0.5 - bufRectRight * 0.5, height *0.5  - bufRectRight * 0.5, bufRectRight, bufRectRight );
  
  if ( player.isPlaying() )
  {
    text("Press p key to pause playback.", 10, 20 );
  }
  else
  {
    text("Press p key to start playback.", 10, 20 );
  }
  
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
