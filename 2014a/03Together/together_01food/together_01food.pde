//infinite display of democracy
//what do you want to have for dinner tonight
Table food_democracy_table;
ArrayList<Integer> sushi_likers = new ArrayList<Integer>();
ArrayList<Integer> salad_likers = new ArrayList<Integer>();
ArrayList<Integer> pizza_likers = new ArrayList<Integer>();
ArrayList<Integer> paella_likers = new ArrayList<Integer>();

ArrayList<Integer> row_one = new ArrayList<Integer>();
ArrayList<Integer> row_two = new ArrayList<Integer>();
ArrayList<Integer> row_three = new ArrayList<Integer>();
ArrayList<Integer> row_four = new ArrayList<Integer>();
ArrayList<Integer> row_five = new ArrayList<Integer>();

//fonts
PFont latoLight;
PFont latoHair;

//pie chart resources
float angle_1 = 0;
float angle_2 = 0;
float num;

void setup() {
  size(500, 500);
  background(255);
  smooth();
  food_democracy_table = loadTable("food_democracy.csv", "header");

  //FONTS
  latoLight = loadFont("Lato-Light-48.vlw");
  latoHair = loadFont("Lato-Hairline-48.vlw");
  textFont(latoHair, 20);
  fill(0, 102, 153, 204);
  text("Food democracy", width/2-50, 40);

  println(food_democracy_table.getColumnCount() +" " + food_democracy_table.getRowCount());

  for (int c=0;c<food_democracy_table.getColumnCount();c++) {
    for (int r=0; r<food_democracy_table.getRowCount();r++) {
      //println(r+" "+c);

      switch(c) {
      case 0: 
        println("Sushi likers: "+ food_democracy_table.getInt(r, 0));
        sushi_likers.add(new Integer(food_democracy_table.getInt(r, 0)));
        break;
      case 1:
        //println("Salad likers: "+ food_democracy_table.getInt(r, 1));
        salad_likers.add(new Integer(food_democracy_table.getInt(r, 1)));
        break;
      case 2:
        //println("Pizza likers: "+ food_democracy_table.getInt(r, 2));
        pizza_likers.add(new Integer(food_democracy_table.getInt(r, 2)));
        break;
      case 3:
        //println("Paella likers: "+ food_democracy_table.getInt(r, 3));
        paella_likers.add(new Integer(food_democracy_table.getInt(r, 3)));
        break;
      case 4:
        //println("Paella likers: "+ food_democracy_table.getInt(r, 3));
        paella_likers.add(new Integer(food_democracy_table.getInt(r, 3)));
        break;
      }

      switch(r) {
      case 0:
        //println("Row one values: "+ food_democracy_table.getInt(0, c));
        row_one.add(new Integer(food_democracy_table.getInt(0, c)));
        break;
      case 1:
        //println("Row two values: "+ food_democracy_table.getInt(1, c));
        row_two.add(new Integer(food_democracy_table.getInt(1, c)));
        break;
      case 2:
        //println("Row three values: "+ food_democracy_table.getInt(2, c));
        row_three.add(new Integer(food_democracy_table.getInt(2, c)));
        break;
      case 3:
        //println("Row four values: "+ food_democracy_table.getInt(3, c));
        row_four.add(new Integer(food_democracy_table.getInt(3, c)));
        break;
      case 4:
        println("Row five values: "+ food_democracy_table.getInt(4, c));
        row_five.add(new Integer(food_democracy_table.getInt(4, c)));
        break;
      }
    }
  }


  //represent the first row
  //from here we will move to arrays
  for (int i=0;i<row_one.size();i++) {
    num += row_one.get(i);
  }
  num = 360/num;
  int y = 0;

  for (int i=0;i<row_one.size();i++) {
    angle_2 = angle_1;
    angle_1 += row_one.get(i) * num;

    int _r = int(random(255));
    int _g = int(random(255));
    int _b = int(random(255));

    fill(_r, _g, _b);
    arc(width/2-40, height/2, 300, 300, radians(angle_2), radians(angle_1));
    fill(0);
    text(row_one.get(i), width/2+150, y + 100 );
    y+=40;
  }
}

