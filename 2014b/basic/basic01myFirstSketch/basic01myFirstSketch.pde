//My first sketch :-)
//global variables
//they can be accessed everywhere in the sketch
int x;
float y;
String s;
//prepare the sketch
void setup() {
  frameRate(20);
  x = 10;
  y = 3.1415555;
  s = "hello";

  println(s);
}

//run the sketch
void draw() {
  x++;//equals to x= x+1;
  println(x);
}

