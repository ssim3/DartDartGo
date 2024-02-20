// Basic class with 2 properties
class Animal {
  int? age;
  bool? isFriendly;

  void displayInfo()
  {
    print("Age: $age");
    print("isFriendly: $isFriendly");
  }
}

// Vehicle class with parameterized constructor and Named Constructors
// Named constructor are used to implement multiple constructors for a class or to provide extra clarity
class Vehicle {
  int? noOfWheels;
  bool? isElectric;

  // Constructor
  Vehicle(this.noOfWheels, this.isElectric);

  // Named Constructor
  Vehicle.gas(int noOfWheels)
  {
    this.noOfWheels = noOfWheels;
    this.isElectric = false;

    print("Gas Vehicle");
  }

  // Named Constructor
  Vehicle.electric(int noOfWheels)
  {
    this.noOfWheels = noOfWheels;
    this.isElectric = true;

    print("Electric Vehicle");
  }

  void displayInfo()
  {
    print("Number of Wheels: $noOfWheels");
    print("isElectric: $isElectric");
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

  // Creating instance of Vehicle class using Named Constructor
  Vehicle gasVehicle = new Vehicle.gas(8);
  gasVehicle.displayInfo();

  // Creating instance of Vehicle class using Named Constructor
  Vehicle electricVehicle = new Vehicle.electric(4);
  electricVehicle.displayInfo();


}