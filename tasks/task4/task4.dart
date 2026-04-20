//رابع تاسك بسم الله الرحمن الرحيم
class Person {
  String name;
  int _age;
  static String universityName = "Sohag University";

  Person(this.name, this._age);

  int get age => _age;
  set age(int value) => _age = value;
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void showInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

abstract class Skills {
  void programming();
  void communication();
}

class Developer extends Employee implements Skills {
  Developer(String name, int age, double salary) : super(name, age, salary);

  void programming() {
    print("Programming skill: Dart developer");
  }

  void communication() {
    print("Communication skill: Good team leader");
  }
}

void main() {
  var d = Developer("Khalid", 24, 10000);

  print("University: ${Person.universityName}");
  d.showInfo();
  d.programming();
  d.communication();
}
