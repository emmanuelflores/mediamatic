class Person{
   String name;
   
   Person(String name){
    this.name = name; 
   }
   
   void sayMyName(){
    println(name); 
   }
  
}

//////////////////////////////////////

Person emmanuel;

void setup(){
  emmanuel = new Person("emmanuel");
  emmanuel.sayMyName();
}
