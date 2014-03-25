//people with class
class Person {
  String name;
  String favorite_food;
  int myWeight;

  Person(String name, String favorite_food, int myWeight) {
    this.name = name;
    this.favorite_food = favorite_food;
    this.myWeight = myWeight;
  }

  //get the data back
  String giveMeYourName() {
    return name;
  }

  String giveMeYourFavoriteFood() {
    return favorite_food;
  }

  int giveMeYourWeight() {
    return myWeight;
  }

  //set new values
  int gainWeight(int value) {
    myWeight +=value;
    return myWeight;
  }

  int loseWeight(int value) {
    myWeight -=value;
    return myWeight;
  }
}


void setup() {
  Person person1 = new Person("xinxin", "sushi", 45);
  Person person2 = new Person("charlie", "salad", 120);

  println("xinxin is called: "+person1.giveMeYourName());
  println("she likes "+person1.giveMeYourFavoriteFood());

  println("charlie is "+person2.giveMeYourWeight()+" kg!");
  person2.gainWeight(20);
  println("after visitng Mexico he is "+person2.giveMeYourWeight()+" kg!");
  person2.loseWeight(60);
  println("after the diet "+person2.giveMeYourWeight()+" kg!");
}

