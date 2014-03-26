int x, y;
int r = 200;
int g = 200;
int b = 200;
int bg = 255;

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
}


void draw() {
  background(bg);
  stroke(220);
  fill(r, g, b);
  ellipse(x, y, 30, 30);
}


void keyPressed() {
  //a cleaner way would be to use switch!
  if (key == 'c') {
    changeColor();
  } 
  if (keyCode == RIGHT) {
    moveRight();
  }
  if (keyCode == LEFT) {
    moveLeft();
  }
  if (keyCode == UP) {
    moveUp();
  }
  if (keyCode == DOWN) {
    moveDown();
  }
  if (key == TAB) {
    println("you tab!");
  }
}

//functions
void moveRight() {
  x+= 5;
}

void moveLeft() {
  x-= 5;
}

void moveUp() {
  y-= 5;
}

void moveDown() {
  y+=5;
}

void changeColor(){
  r = (int)random(0,255);
  g = (int)random(0,255);
  b = (int)random(0,255);
}
