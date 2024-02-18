void main() {
  print(divideByNum(10, 5)); // Passing in integers
  print(divideByNum(5, 10.2)); // Passing in doubles

  print(multiplyByNum(5, 10));

  print(sum(num1: 5, num2: 10));

  print(subtract(10));
}

// Dynamic functions can take in any parameters and return any type of values.
dynamic divideByNum(var num1, var num2) {
  var result = num1 / num2;
  print(result.runtimeType);
  return result;
}

// Single line functions using the => operator
dynamic multiplyByNum(var num1, var num2) => num1 * num2;

// Function with name parameters
dynamic sum({var num1, var num2}) => num1 + num2;

// Default parameters
dynamic subtract(var num1, {var num2 = 0}) => num1 - num2;
