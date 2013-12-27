//loading table, lazy evaluation
Table city_value_table;
ArrayList<Integer> shanghai_city = new ArrayList<Integer>();
ArrayList<Integer> tokyo_city = new ArrayList<Integer>();
ArrayList<Integer> mexico_city = new ArrayList<Integer>();

int timer = 0;

void setup() {
  city_value_table = loadTable("cities.csv", "header");

  println(city_value_table.getColumnCount()+" "+city_value_table.getRowCount());
  //3 5
  int v1 = city_value_table.getInt(4, 2);
  println(v1);


  //load the data into vectors
  for (int c=0;c<city_value_table.getColumnCount();c++) {
    for (int r=0; r<city_value_table.getRowCount();r++) {
      //println(r+" "+c);

      switch(c) {
      case 0: 
        println("Shanghai data: "+city_value_table.getInt(r, 0));
        shanghai_city.add(new Integer(city_value_table.getInt(r, 0)));
        break;
      case 1:
        println("Tokyo data: "+city_value_table.getInt(r, 1));
        tokyo_city.add(new Integer(city_value_table.getInt(r, 1)));
        break;
      case 2:
        println("Mexico data: "+city_value_table.getInt(r, 2));
        mexico_city.add(new Integer(city_value_table.getInt(r, 2)));
        break;
      }
    }
  }
}

void draw() {
  timer += 1;
  switch(timer) {
  case 50:
    println("I am lazy at 50!");
    println(tokyo_city.get(2));
    break;

  case 70:
    println("I am lazy at 70!");
    println(mexico_city.get(1));
    break;

  case 100:
    println("I am the last lazy at 100!");
    println(shanghai_city.get(0));
    break;

  case 120:
    timer = 0;
    break;
  }
}
