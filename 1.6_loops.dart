void main() {
  // For Loops

  // Looping through iterable
  var clients = ["Jonathan", "William", "Benedict"];

  // for-in loop
  for (var client in clients) {
    print("Next Client: $client");
  }

  print('');

  // Your typical C/C++ loop
  for (var i = 0; i < clients.length; i++) {
    print("Current iteration: $i");
    print(clients[i]);
    print('');
  }

  // forEach loop
  clients.forEach((client) {
    print("Next Client: $client");
  });

  // While loop
  var age = 5;

  while (age <= 25) {
    print("Happy Birthday! You are $age years old!");
    age++;
  }

  // break and continue
  for (int i = 0; i < 100; i++) {
    if (i == 50) break;
    if (i % 2 == 0) continue; // skip over even numbers
    print("Current Iteration: $i");
  }
}
