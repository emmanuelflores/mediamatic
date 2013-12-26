//the mega basic processing sketch

int r, g, b;

//remember the setup function is only evaluated at the beginning of the run time
void setup() {
  size(400, 400);//size of our 'canvas'
  frameRate(20);
  
  //evaluate once
  background(100,230,230);//the background of the canvas
  
}

//function that is evaluated on a loop
void draw(){
  r = (int)random(10,240);
  g = (int)random(30,140);
  b = (int)random(40,100);
  
  background(r,g,b);
  println(r + " " + g + " " + b);

}



