import 'dart:io';

// When retrieving I/O in dart, we will need to use the package dart:io
// The 2 functions we will be using to prompt for input and receive input are from this package.

void main() {
  stdout.writeln("What is your name?"); // Prompt user for Name
  String? name = stdin.readLineSync(); // Save user input as variable

  print("My name is $name"); // Dollar symbol for variables in String
}
