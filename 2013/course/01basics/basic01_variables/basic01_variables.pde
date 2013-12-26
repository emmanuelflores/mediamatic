//this is a comment

//VARIABLES
//the little things at the beginning of the line are called data types
//a proper data type can assure performance, determines the 
//range of values the variable can contain and the operations that
//maybe performed on it.
String hello = "hello world 2";//String
int integerValue = 10;//integer
float floatValue = 10.22f; //float
double doubleValue = 10.000023; //double precision value 
//http://docs.oracle.com/javase/tutorial/java/nutsandbolts/datatypes.html


//FUNCTIONS
//they are used by the program so it knows what to do
void setup() {//the setup function is the original state of our program

  println("hello world 1");
  println(hello);
  printHelloWorld();
  printHelloWorldAgain();
  
  
  //now let's print the other variables
  println(integerValue +" "+floatValue+" "+doubleValue);
}


void printHelloWorld() {
  println("hello world 3");
}


void printHelloWorldAgain() {
  println("hello world 4");
}


void draw(){//the draw functions evaluates on a loop
  
  //println("hello forever");
  
}



