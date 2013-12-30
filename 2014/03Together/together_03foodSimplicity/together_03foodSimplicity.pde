static int sizeOfArrays = 5;
static int amountOfStreams = 3;
float[] stream_1 = new float[sizeOfArrays];
float[] stream_2 = new float[sizeOfArrays];
float[] stream_3 = new float[sizeOfArrays];
color[] colors = new color[sizeOfArrays];

//PieChart[] charts = new PieChart[amountOfStreams];
PieChart p1;

int timer = 0;

void setup() {
  size(600, 500);
  background(255);

  for (int i=0;i<sizeOfArrays;i++) {
    float r1 = random(1, 100);
    float r2 = random(1, 100);
    float r3 = random(1, 100);
    stream_1[i] = r1;
    stream_2[i] = r2;
    stream_3[i] = r3;
    colors[i] = generateColor();
  }

  p1 = new PieChart(stream_1, colors);
  p1.drawPie();
}

color generateColor() {
  int _r = int(random(255));
  int _g = int(random(255));
  int _b = int(random(255));

  return color(_r, _g, _b);
}

