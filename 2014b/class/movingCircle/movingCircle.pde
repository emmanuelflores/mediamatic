class Jumpy {
  int xpos;
  int ypos;
  int xstep;
  int ystep;
  //constructor
  Jumpy(int xpos, int ypos, int xstep, int ystep) {
    this.xpos = xpos;
    this.ypos = ypos;
    this.xstep = xstep;
    this.ystep = ystep;
  }
  
  void drawMe() {
    xpos +=xstep;
    ypos +=ystep;
  }
}

Jumpy mJumpy;

void setup() {
  size(500,500);
  mJumpy = new Jumpy(100,10);
}

void draw(){
  mJumpy.drawMe();
}

