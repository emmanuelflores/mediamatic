class Pongy {

  float xPos, yPos;
  float xSpeed, ySpeed;
  //added acceleration
  float xAcc, yAcc;
  float r;

  //constructor
  Pongy() {
    xPos = 30;
    yPos = 50;
    xAcc = 1;
    yAcc = 1;
    xSpeed = 1;
    ySpeed = 4;
    r = 10;
  }

  Pongy(float _xPos, float _yPos, float _xSpeed, float _ySpeed, float _r) {
    this.xPos = _xPos;
    this.yPos = _yPos;
    this.xSpeed = _xSpeed;
    this.ySpeed = _ySpeed;
    this.r = _r;
  }

  //methods
  public void move() {
    xAcc = (mouseX - xPos)/50;
    yAcc = (mouseY - yPos)/50;
    xSpeed +=xAcc;
    ySpeed +=yAcc;

    xPos +=xSpeed;
    yPos +=ySpeed;
  }

  public void collision() {
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

  public void drawPongy() {
    ellipse(xPos, yPos, r*2, r*2);
  }
}

