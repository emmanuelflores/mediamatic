int xspeed, yspeed;
int xpos, ypos, wdth, ht;

void setup()
{
  size(400, 400);
  //background(0);
  xspeed=4;
  yspeed=10;
  wdth=10;
  ht=10;

  noStroke();

  xpos=width/2;
  ypos=height/2;

  frameRate(30);
}



void draw()
{
  background(0);
  ellipse(xpos, ypos, wdth, ht);
  xpos+=xspeed;
  ypos+=yspeed;

  if (xpos>=width-wdth/2 || xpos<=wdth/2) {
    xspeed*=-1;
  }
  if (ypos>=height-ht/2 || ypos<=ht/2) {
    yspeed*=-1;
  }
}

