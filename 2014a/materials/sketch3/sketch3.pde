class Person {
  //attributes
  String name;
  String favorite_food;
  int myWeight;

  Person(String name, String favorite_food, int myWeight) {
    this.name = name;
    this.favorite_food = favorite_food;
    this.myWeight = myWeight;
  }

  String giveMeYourName() {
    return name;
  }

  void sayYeah() {
    println("yeahhhhhhhhhhhhhh!!");
  }

  void sayUpa() {
    println("uppppppppa ajax");
  }
}


void setup() {
  Person peter = new Person("Peter", "cheese", 75);
  peter.sayYeah();
  peter.sayUpa();

  Person xinxin = new Person("Xinxin", "spring rolls", 55);
  println(xinxin.giveMeYourName());
}

