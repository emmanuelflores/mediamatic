//let's talk about language
//loops and arrays

//this is an array, it is used to contain multiple values
//inside a single variable
int[] x = { 
  50, 61, 83, 69, 71, 50, 29, 31, 17, 39, 50
}; 
int[] y = { 
  18, 37, 43, 60, 82, 73, 82, 60, 43, 37, 18
};

void setup() {
  size(400, 400);
  background(255, 255, 255);

  //this is a loop
  for (int i=0;i<10;i++) {
    println(i);
  }

  //use a loop to draw a basic shape
  for (int i=0;i<x.length-1;i++) {
    line(x[i], y[i], x[i+1], y[i+1]);
  }
}


void draw() {
  //background(255, 255, 255);

  for (int i=0;i<10;i++) {
    int r = (int)random(0, 255);
    int g = (int)random(0, 255);
    int b = (int)random(0, 255);

    int x2 = (int)random(0, width);
    int y2 = (int)random(0, height);

    stroke(r, g, b);
    line(width*0.5, height*0.5, x2, y2);
  }
}

void keyPressed(){
    background(255,255,255);
    
      for (int i=0;i<x.length-1;i++) {
        stroke(0,0,0);
    line(x[i], y[i], x[i+1], y[i+1]);
  }
}

