// 1.3 | Operators

main() {
  int a = 5;
  int b = 10;

  // Unary Operators
  print(a++);
  print(a--);

  a += 5;
  a -= 5;

  b *= 2;

  // Arithmatic, Multiplication, Divison, Modulo
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(b % a);

  // Relational Operators ==, !=, >=, <=
  if (a != b) {
    print("Not Equal!");
  }

  // Logical Operators ||, &&
  if (a >= 5 && b <= 20) {
    print("Yup!");
  }

  // Ternary Operator
  var isEven = b % 2 == 0 ? "Even" : "Odd";
  print(isEven);
}
