//Next: make a pie chart class
//Next: smooth the transitions with interpolations
//Next: take care of the transitions
Table food_democracy_table;
ArrayList<Integer> sushi_likers = new ArrayList<Integer>();
ArrayList<Integer> salad_likers = new ArrayList<Integer>();
ArrayList<Integer> pizza_likers = new ArrayList<Integer>();
ArrayList<Integer> paella_likers = new ArrayList<Integer>();

//vector of vectors, ask cpp!
ArrayList<ArrayList<Integer> > container = new ArrayList<ArrayList<Integer> >();

//fonts
PFont latoLight;
PFont latoHair;

//color for the rows
color[] colors;

//pie chart resources
float angle_1 = 0;
float angle_2 = 0;
//float num;
ArrayList<Float> num = new ArrayList<Float>();

//lazy evaluation
int timer = 0;

void setup() {
  size(600, 500);
  background(255);
  smooth();
  food_democracy_table = loadTable("food_democracy.csv", "header");


  println("columns are: "+food_democracy_table.getColumnCount() +" \n"+
    "rows are: "+ food_democracy_table.getRowCount());

  //prepare container
  for (int r=0; r<food_democracy_table.getRowCount();r++) {
    container.add(new ArrayList<Integer>());
    //num.add(new Float(0.0f));
    //println("the size of num is: "+num.size());
  }

  //create the color for the rows
  colors = new color[food_democracy_table.getRowCount()];
  for (int r=0; r<food_democracy_table.getRowCount();r++) {
    colors[r] = generateColor();
  }

  for (int c=0;c<food_democracy_table.getColumnCount();c++) {
    for (int r=0; r<food_democracy_table.getRowCount();r++) {
      switch(c) {
      case 0: 
        sushi_likers.add(new Integer(food_democracy_table.getInt(r, 0)));
        break;
      case 1:
        salad_likers.add(new Integer(food_democracy_table.getInt(r, 1)));
        break;
      case 2:
        pizza_likers.add(new Integer(food_democracy_table.getInt(r, 2)));
        break;
      case 3:
        paella_likers.add(new Integer(food_democracy_table.getInt(r, 3)));
        break;
      case 4:
        paella_likers.add(new Integer(food_democracy_table.getInt(r, 3)));
        break;
      }

      switch(r) {
      case 0:
        //println("Row one values: "+ food_democracy_table.getInt(0, c));
        container.get(0).add(new Integer(food_democracy_table.getInt(0, c)));
        break;
      case 1:
        //println("Row two values: "+ food_democracy_table.getInt(1, c));
        container.get(1).add(new Integer(food_democracy_table.getInt(1, c)));
        break;
      case 2:
        //println("Row three values: "+ food_democracy_table.getInt(2, c));
        container.get(2).add(new Integer(food_democracy_table.getInt(2, c)));
        break;
      case 3:
        //println("Row four values: "+ food_democracy_table.getInt(3, c));
        container.get(3).add(new Integer(food_democracy_table.getInt(3, c)));
        break;
      case 4:
        //println("Row five values: "+ food_democracy_table.getInt(4, c));
        container.get(4).add(new Integer(food_democracy_table.getInt(4, c)));
        break;
      }
    }
  }

  for (int c=0;c<container.size();c++) {
    float _num = 0.0f;
    for (int i=0;i<container.get(c).size();i++) {
      _num += container.get(c).get(i);
    }
    //println(_num);
    _num = 360/_num;
    num.add(new Float(_num));
  }
}

//////////////////////////////////////////////
void draw() {
  //FONTS
  latoLight = loadFont("Lato-Light-48.vlw");
  latoHair = loadFont("Lato-Hairline-48.vlw");
  textFont(latoHair, 20);
  fill(0, 102, 153, 204);
  text("Food democracy", width/2-50, 40);
  
  //test
  //drawPieChart(102, container.get(1).size());

  //lazy evaluation
  int _size = container.get(1).size();
  timer += 1;
  switch(timer) {
  case 1:
    background(255);
    drawPieChart(0,_size);
      break;

  case 50:
  background(255);
    drawPieChart(1,_size);
    break;

  case 100:
  background(255);
    drawPieChart(2,_size);
    break;

  case 150:
  background(255);
    drawPieChart(3,_size);
    break;

  case 200:
    timer = 0;
    break;
  }
}

void drawPieChart(int _c, int _limit) {
  if (_c > _limit) {
    _c = _c % _limit; 
    //println("your index is bigger than the size, mod op is: " + _c);
  }

  int y = 0;

  for (int i=0;i<container.get(_c).size();i++) {
    angle_2 = angle_1;
    angle_1 += container.get(_c).get(i) * num.get(_c);
    //fill(generateColor());
    fill(colors[i]);
    arc(width/2-40, height/2, 300, 300, radians(angle_2), radians(angle_1));
    fill(0);
    text(container.get(_c).get(i), width/2+150, y + 100 );
    y+=40;
  }
}

void colorPieChart() {
}

color generateColor() {
  int _r = int(random(255));
  int _g = int(random(255));
  int _b = int(random(255));

  return color(_r, _g, _b);
}

