PImage img;

float r = 15;
float minRadius = 10;
float maxRadius = 20;

boolean grow = false;

void setup() {
  size(450, 400);
  background(255);
  img = loadImage("myPicture.jpeg");

  noStroke();
}

void draw() {
  smooth();
  int x = 10;
  int y = 20;
  //println(x+y);
  //println(adding(30,100));
            //color c
 //getTransparentColor( img.get( mouseX, mouseY ), 64 );
color c = getTransparentColor( img.get( mouseX, mouseY ), 64 );

}

int adding(int x, int y) {
  return x+y;
}

color getTransparentColor(color c, float a) {
  int r = (c>>16) & 0xff;
  int g = (c>>8) & 0xff;
  int b = c & 0xff;

  return color(r, g, b, a);
}

