class Student {
  String name;
  String lastName;
  int age;
  bool active;
  double weight;
  String nationality;

  Student(this.name , this.lastName , this.age, this.active, this.weight,this.nationality);
}


void main(){

  Student people = Student("Larissa", "Costa", 17, true, 53.2, "Brasileira");
  print(people.name.toString());
  print(people.age.toString());
  print(people.active.toString());
  print(people.weight.toString());
  print(people.nationality.toString());

}
