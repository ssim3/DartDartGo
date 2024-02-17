// 1.5 | Conditionals

void main() {
  // If-Else Statements

  int number = 20;

  if (number % 2 == 0) {
    print("$number is even.");
  } else if (number % 5 == 0) {
    print("$number is divisible by 5.");
  } else {
    print("???");
  }

  number = 55;

  if (number % 2 == 0) {
    print("$number is even.");
  } else if (number % 5 == 0) {
    print("$number is divisible by 5.");
  } else {
    print("???");
  }

  number = 81;

  if (number % 2 == 0) {
    print("$number is even.");
  } else if (number % 5 == 0) {
    print("$number is divisible by 5.");
  } else {
    print("$number does not match any of the criteria.");
  }

  // Switch Case Statements
  var grade = 'B';

  switch (grade) {
    case 'A':
      print("You did Excellent!");
      break;
    case 'B':
      print("Good Job! But you could've done better.");
      break;
    default:
      print("Disgrace to family.");
  }
}
