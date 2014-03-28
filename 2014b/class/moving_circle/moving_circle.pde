//events
int x;
int y;
int radius;

void setup(){
  size(600,600);
  background(255);
  
  x = width/2;
  y = height/2;
  radius = 30;
}


void draw(){
  ellipse(x,y,radius,radius);
}


void keyPressed(){
  if(key == 'c' || key=='C'){
    int randomColor = (int)random(0,255);
    background(randomColor);
  }
  
  if(keyCode == RIGHT){
   x = x + 4; 
  }
  
  if(keyCode == LEFT){
   x = x- 4; 
  }
  
  if(keyCode == UP){
   y = y-4; 
  }
  
  if(keyCode == DOWN){
   y = y+4; 
  }
  
  if(key == 'b' || key == 'B'){
    radius = radius + 10;
  }
    
  if(key == 's' || key == 'S'){
     radius =  radius - 10;
  }
}
