PImage img;

float r = 15;
float minRadius = 10;
float maxRadius = 20;

boolean grow = false;

void setup() {
  size(450, 450);
  //img = loadImage("xinxin.jpeg");
  background(255);
  img = loadImage("xinxin.jpeg");
  //image(img,0,0);

  noStroke();//we don't want lines
}

void draw() {
  //background(255);
  
  smooth();
  
  color c = getTransparentColor(img.get(mouseX, mouseY),64);
  fill(c);
  ellipse(mouseX,mouseY,r*2,r*2);
  
  if(grow){
    r++; //r = r+1;
    if(r>maxRadius){
      grow = false;
    }
  }
  else{
    r--;//r = r - 1;
    if(r<minRadius){
      grow = true;
    }
  }
}

//color tracker
// http://msdn.microsoft.com/en-us/library/vstudio/336xbhcz.aspx
color getTransparentColor(color c, float alpha) {
    int r = (c>>16) & 0xff;//shift operator for red
  int g = (c>>8) & 0xff; //shift operator for green
  int b = c & 0xff;//shift operator for blue
  
  return color(r,g,b,alpha);
}

