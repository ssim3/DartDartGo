void main() {
  // Generic Data Types
  String name = "Johan";
  int age = 10;
  double height = 161.7;
  bool isTall = true;

  // Output
  print(name);
  print(age);
  print(height);
  print(isTall);

  // var data type to implicitly store any value
  // NOTE : Once a var has been set, the data type of the value must be the same as assignment
  var hobby = "Baseball";
  // hobby = 3.14 -> ERROR
  print(hobby);

  // dynamic data type to implicitly store any value
  // NOTE : Unlike var, dynamic variables can change their value data type at any given moment in the program
  dynamic bedtime = "21:00";
  print(bedtime);

  bedtime = 9;
  print(bedtime);

  // Null Safety
  String? extracurricular; // Nullable type. Can be `null` or string.
  print(extracurricular);

  // Dart can usually detect when a non-nullable variable is set to a non-null value before it's used, for example:

  int number_to_add; // Non-Nullable variable

  void add_to_age() {
    number_to_add = 10; // assignment
    print(age + number_to_add); // use
  }

  add_to_age(); // No errors, Dart can automatically understand that the variable is assigned before it is used

  // However, sometimes this may not always work, Two common cases are top-level variables and instance variables: Dart often can't determine whether they're set, so it doesn't try.
  // If you're sure that a variable is set before it's used, but Dart disagrees, you can fix the error by marking the variable as late

  late int second_number_to_add; // Non-Nullable variable

  void add_to_age_again() {
    second_number_to_add = 20; // assignment
    print(age + second_number_to_add); // use
  }

  add_to_age_again();
}
