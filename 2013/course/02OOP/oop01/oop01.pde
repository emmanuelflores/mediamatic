int amount = 10;
SimpleLine[] lineArray = new SimpleLine[amount];

void setup() {
  size(400, 400);
  background(255);

  //one line
  //  SimpleLine mLine = new SimpleLine(100,100,200,200);
  //  mLine.drawLine();

  //lot of lines
  //draw once
  for (int i=0;i<amount;i++) {
    float x2 = random(0, width);
    float y2 = random(0, height);

    lineArray[i] = new SimpleLine(width*0.5, height*0.5, x2, y2);

    //draw lines
    lineArray[i].drawLine();
  }
}

void draw() {
  background(255);
  //dynamic drawing
  for (int i=0;i<amount;i++) {
    float x2 = random(0, width);
    float y2 = random(0, height);

//    lineArray[i] = new SimpleLine(width*0.5, height*0.5, x2, y2);

    //draw lines
    lineArray[i].drawLine(x2,y2);
  }
}


class SimpleLine {

  float x1, y1, x2, y2;

  //constructors
  //empty constructor
  SimpleLine() {
    this.x1 = random(0, width);
    this.y1 = random(0, height);
    this.x2 = random(0, width);
    this.y2 = random(0, height);
  }

  SimpleLine(float _x1, float _y1, float _x2, float _y2) {
    this.x1 = _x1;
    this.y1 = _y1;
    this.x2 = _x2;
    this.y2 = _y2;
  }

  void drawLine() {
    line(x1, y1, x2, y2);
  }
  
  void drawLine(float _x2, float _y2){
    x2 = _x2;
    y2 = _y2;
   line(x1, y1,_x2,_y2); //line(x1,y2,_x2,_y2);
  }
}

