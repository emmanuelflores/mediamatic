int maxCells=1400;
Cell[] cells = new Cell[maxCells+1];
boolean started=false;

void setup() {
  size(600,400,P3D);
  background(0);
  initialize();
  started=true;
}

void draw() {
  background(0);
  if (started) {
    for (int i=1;i<=maxCells;i++) {
      cells[i].update();
    }
  }
}

void initialize() {
  float xs,ys,rx,ry;
  for (int i=1;i<=maxCells;i++) {
    rx=width/4+random(-width/8,width/8);
    ry=height/4+random(-height/8,height/8);
    xs=width/2+rx*cos(TWO_PI*i/maxCells);
    ys=height/2+ry*sin(TWO_PI*i/maxCells);
    cells[i]=new Cell(xs,ys,i);
  }
}

void mousePressed() {
  initialize();
  started=true;
}
