class Snoop    {
//State image
PImage snoop;

//Global Variables for snoop
float sx;
float sy;
float sa;
float ss;


//Constructor
Snoop(float sy_, float sx_, float sa_, float ss_)  {
sy = sy_;
sx = sx_;
sa = sa_;
ss = ss_;
}


void update(float g)  {
 snoop = loadImage("snoop.png");
 
 //change acceleration based on gravity
 sa = sa + g;
 //CHange speed based on acceleration
 ss = ss + sa;
  //Speed
  sy = sy + ss;
  
  
  //Send off screen when hit bottom
  if (sy < -20)  {
   sy = -50;
   sx = -50;
  }
}



//Get y
float getY()  {
 return sy; 
}

//get x
float getX()  {
 return sx; 
}

void setY(float newY_)  {
 sy = newY_;
}

}