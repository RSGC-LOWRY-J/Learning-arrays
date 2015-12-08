import processing.sound.*;

//Classes
Snoop sno;

//Declare soundfiles.
SoundFile back;

//Declare Images
PImage snoop;

//Global variables
float gravity;

void setup()  {
  
  back = new SoundFile(this, "Smoke on me.mp3");
  
  snoop = loadImage("snoop.png");
  
  size(700, 700);
  background(0);
  
  sno = new Snoop (-50, -50, 0, 0);
  
  gravity = 0.075;
  
   back.loop();
}

void draw()  {
   
  sno.update(gravity);
  
}

void keyPressed() {
  
   sno.setY(200); 
  }
  
 