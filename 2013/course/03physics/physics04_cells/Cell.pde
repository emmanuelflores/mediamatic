class Cell {
  int nr;
  float x,y;
  float diago=dist(0,0,width,height);
  int xpos,ypos,lastXpos=0,lastYpos=0;
  float speed;
  float xmov=0,ymov=0;
  int cr,cg,cb;
  //color col;

  Cell(float x, float y, int n) {
    nr=n;
    this.x=x; this.y=y;
    xpos=int(x); ypos=int(y);
    lastXpos=xpos;
    lastYpos=ypos;
    while (xmov==0 && ymov==0) {
      xmov=random(-1.0,1.0);
      ymov=random(-1.0,1.0);
    }
    speed=0.6+(n/(maxCells+0.0))*0.8; //random(0.6,1.4);
    cr=255;
    cg=int(255*(speed-0.6)/0.8);
    cb=128+int(127*(speed-0.6)/0.8);
    //col=color(cr,cg,cb);
  }
  
  void update() {
    float d = dist(x,y,mouseX,mouseY);
    float attrac=0.0010*(diago-d)/diago;
  
    boolean turn=false;
    for (int i=1;i<=5;i++) {
      int iran=1+(int)random(maxCells-1);
      float md=random(1,4);
      if (dist(cells[iran].x,cells[iran].y,x,y)<md) {
        turn=true;i=5;
      } 
    }
    if (turn) {xmov+=random(-0.8,0.8);ymov+=random(-0.8,0.8);}
    
    if (x>width || x<1) {xmov*=-1;}
    if (y>height || y<1) {ymov*=-1;}
    
    xmov+=(mouseX-x)*attrac;
    ymov+=(mouseY-y)*attrac;
    xmov+=random(-0.02,0.02);
    ymov+=random(-0.02,0.02);
    for (int i=1;i<=5;i++) {
      if (nr>i) {
        xmov+=0.001*cells[nr-i].xmov;
        ymov+=0.001*cells[nr-i].ymov;
      }
    }
    xmov*=0.992;ymov*=0.992;
    x+=xmov*speed; 
    y+=ymov*speed;
    xpos=int(x); ypos=int(y);
//    set(xpos,ypos,col);
//    set(lastXpos,lastYpos,col2);
    //stroke(cr,cg,cb);
    stroke(255,255,255);
    line(xpos,ypos,lastXpos,lastYpos);
    lastXpos=xpos; lastYpos=ypos;
  }
}
