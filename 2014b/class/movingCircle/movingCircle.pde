class Jumpy {
  int xpos;
  int ypos;
  int xstep;
  int ystep;
  int diam;
  //constructor
  Jumpy(int xstep, int ystep, int diam) {
    xpos = width/2;
    ypos = height/2;
    this.xstep = xstep;
    this.ystep = ystep;
    this.diam = diam;
  }
  
  void drawMe() {
    xpos +=xstep;
    ypos +=ystep;
    
    if(xpos>=width-(diam/2) || xpos<=diam/2){
      //xstep = xstep * -1;
      xstep *=-1;
    }
    
    if(ypos>=height-(diam/2) || ypos<=diam/2){
      //xstep = xstep * -1;
      ystep *=-1;
    }
    
    ellipse(xpos,ypos,diam,diam);
  }
}

Jumpy mJumpy;

void setup() {
  size(500,500);
  mJumpy = new Jumpy(2,3,20);
}

void draw(){
  background(255);
  mJumpy.drawMe();
}

