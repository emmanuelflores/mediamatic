//lots of circles part 2
int amount = 4;
//3 circles (100,100)  (200,200)  (300,300)
//arrays to the rescue
float[] xcircles = {100,200,300,400};
float[] ycircles = {100,200,300,400};
float rc = 100;

void setup(){
  size(600,600);
  background(122,60,40);
  
  for(int i=0;i<amount;i++){
    //println(i);
    //drawTenRandomCircles();
    noFill();
    ellipse(xcircles[i],ycircles[i],rc,rc);
  }
}

void draw(){

}


void drawTenRandomCircles(){
 float xc,yc,rc; 
 rc = random(1,100);
 xc = random(0+rc,width-rc);
 yc = random(0+rc,height-rc);
 noFill();
 stroke(255,255,255);
 ellipse(xc,yc,rc,rc);
}
