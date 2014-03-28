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

int amount = 100;
ArrayList<Jumpy> circles = new ArrayList<Jumpy>();
void setup() {
  size(500,500);
  frameRate(20);
  for(int i=0;i<amount;i++){
   int diam = (int)random(10,100); 
   int xstep = (int)random(1,8);
   int ystep = (int)random(1,8);
   circles.add(new Jumpy(diam,xstep,ystep));
  }
}

void draw(){
  background(255);
  for(int i=0;i<amount;i++){
   circles.get(i).drawMe();
  }

}

