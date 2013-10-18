class Pongy {
  float xPos, yPos;
  float xSpeed, ySpeed;
  float xAcc, yAcc;
  float previousX, previousY;
  float r;
  float resistence;
  //constructor
  Pongy() {
    xPos = 30;
    yPos = 50;
    xAcc = 1;
    yAcc = 1;
    //xSpeed = 1;
    //ySpeed = 4;
    r = 10;
    resistence=0.99;
  }

  Pongy(float xPos, float yPos, float xSpeed, float ySpeed, float r) {
    this.xPos=xPos;
    this.yPos=yPos;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.r = r;
  }
  //methods
  void move() {
    xAcc = (mouseX - xPos)/50;
    yAcc = (mouseY - yPos)/50;
    xSpeed +=xAcc;
    ySpeed +=yAcc;
    xSpeed *=resistence;
    ySpeed *=resistence;
    xPos +=xSpeed;
    yPos +=ySpeed;
  }

  void collision() {
    if (xPos < r) {
      xPos = r;
      xSpeed *=-1;
      println("collision1");
    }

    if (xPos > width - r) {
      xPos = width - r;
      xSpeed *=-1;
      println("collision2");
    }

    if (yPos < r) {
      yPos = r;
      ySpeed *=-1;
      println("collision3");
    }

    if (yPos > height-r) {
      yPos = height-r;
      ySpeed *=-1;
      println("collision4");
    }
  }

  void drawPongy() {
    ellipse(xPos, yPos, r*2, r*2);
  }
}

