class Person {
  String? name;
  int? age;

  void showOutput() {
    print(this.name);
    print(this.age);
  }
}

class Doggo {
  String? name;
  String? breed;
  int? age;

  // Constructors
  Doggo(String name, String breed, [int age = 5]) {
    this.name = name;
    this.breed = breed;
    this.age = age;
  }

  void showOutput() {
    print(this.name);
    print(this.breed);
    print(this.age);
  }
}

void main() {
  Person firstPerson = Person();

  firstPerson.name = "Jonathan";
  firstPerson.age = 23;

  firstPerson.showOutput();

  // doggo
  Doggo dog = Doggo("Mark", "Golden Retriever", 15);
  dog.showOutput();
}
