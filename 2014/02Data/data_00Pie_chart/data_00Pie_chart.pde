//some basic resources to start
int totalNetValue;
int[] values = {
  10, 34, 75, 17, 39, 1, 40
};
float[] normValues = new float[values.length];

PFont latoLight;
PFont latoHair;

//pie chart resources
float angle_1 = 0;
float angle_2 = values[0];
float num;

void setup() {
  //PAPERWORK
  size(500, 500);
  background(255);
  smooth();

  //FONTS
  latoLight = loadFont("Lato-Light-48.vlw");
  latoHair = loadFont("Lato-Hairline-48.vlw");
  textFont(latoHair, 20);
  fill(0, 102, 153, 204);
  text("hello data", width/2-50, 40);


  //VALUES SCALED 100%
  //get the total value
  for (int i=0;i<values.length;i++) {
    totalNetValue += values[i];
  }
  println("total value of the array: "+totalNetValue);

  //normalize it to 100 percent if you need to
  for (int i=0;i<values.length;i++) {
    float _value = (float)map(values[i], 0, totalNetValue, 0, 100);
    normValues[i] = _value;
    println("the original value "+values[i]+" is scaled to "+_value);
  }

  //VALUES SCALED TO DEGREES
  for (int i=0;i<values.length;i++) {
    num += values[i];
  }

  num = 360/num;
  int y = 0;
  /*
  http://processing.org/reference/arc_.html
   arc(a, b, c, d, start, stop)
   arc(a, b, c, d, start, stop, mode)
   */
  for (int i=0;i<values.length;i++) {
    angle_2 = angle_1;
    angle_1 += values[i] * num;

    int _r = int(random(255));
    int _g = int(random(255));
    int _b = int(random(255));

    fill(_r,_g,_b);
    arc(width/2-40, height/2, 300, 300, radians(angle_2), radians(angle_1));
    fill(0);
    text(values[i],width/2+150, y + 100 );
    y+=40;
  }
}


void draw() {
}

