// Basic class with 2 properties
class Animal {
  int? age;
  bool? isFriendly;

  void displayInfo() {
    print("Age: $age");
    print("isFriendly: $isFriendly");
    print("");
  }
}

// Vehicle class with parameterized constructor and Named Constructors
// Named constructor are used to implement multiple constructors for a class or to provide extra clarity
class Vehicle {
  static String? brand;
  int? noOfWheels;
  bool? isElectric;

  // Constructor
  Vehicle(this.noOfWheels, this.isElectric);

  // Named Constructor
  Vehicle.gas(int noOfWheels) {
    this.noOfWheels = noOfWheels;
    this.isElectric = false;

    print("Gas Vehicle");
  }

  // Named Constructor
  Vehicle.electric(int noOfWheels) {
    this.noOfWheels = noOfWheels;
    this.isElectric = true;

    print("Electric Vehicle");
  }

  void displayInfo() {
    print("Brand: ${Vehicle.brand}");
    print("Number of Wheels: ${this.noOfWheels}");
    print("isElectric: ${this.isElectric}");
    print("");
  }
}

class Car extends Vehicle {
  Car(isElectric) : super(isElectric) {
    this.noOfWheels = 4;
  }
}

// Encapsulation in Dart (Private Properties, Getters, Setters)
class Employee {
  String? _name;
  String? _department;
  int? _tenure;

  Employee(String name, String department, {int tenure = 0}) {
    this._name = name;
    this._department = department;
    this._tenure = tenure;
  }

  // As an employees name generally doesn't change, we will only have a getter for it
  String? getName() {
    return this._name;
  }

  String? getDep() {
    return this._department;
  }

  void setDep(String? department) {
    this._department = department;
  }

  // Shorter form for getter
  int? get tenure => this._tenure;

  void displayInfo() {
    print(getName());
    print(getDep());
    print(tenure);
  }
}

void main() {
  // Creating instance of Animal class and accessing class members
  Animal animal = new Animal(); // Default Constructor
  animal.age = 5;
  animal.isFriendly = true;

  animal.displayInfo();

  // Creating instance of Vehicle Class using Constructor
  Vehicle vehicle = new Vehicle(4, false);
  vehicle.displayInfo();

  // Setting static variables using Class name
  Vehicle.brand = "Ford";

  // Creating instance of Vehicle class using Named Constructor "Gas"
  Vehicle gasVehicle = new Vehicle.gas(8);
  gasVehicle.displayInfo();

  // Creating instance of Vehicle class using Named Constructor "Electric"
  Vehicle electricVehicle = new Vehicle.electric(4);
  electricVehicle.displayInfo();

  // Demonstrating Getters & Setters through "Employee" class
  Employee john = new Employee("John", "HR", tenure: 15);

  john.displayInfo();
  print("");

  john.setDep("Logistics");

  john.displayInfo();
}
