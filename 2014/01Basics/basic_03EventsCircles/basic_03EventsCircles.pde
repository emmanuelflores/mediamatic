int index = 0;
int[] red = {100, 150, 180};
int[] green = {99,105,20};
int[] blue = {10,12,13};


void setup() {
  size(500, 500);
  background(100, 200, 200);
  index = 0;
}

void draw() {
  
  noFill();
  ellipse(mouseX, mouseY, 20,20);
  
}


void mousePressed() {

  if (index<red.length-1) {
    index += 1;
  }
  else {
    index = 0;
  }
  
  println(index);
  background(red[index],green[index],blue[index]);
}

