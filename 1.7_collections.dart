void main(List<String> args) {
  List<String> names = ['Jonathan', 'William', 'Franklin'];

  // Indexing list elements
  print(names[0]);
  print(names[1]);
  print(names[2]);

  // Length of names
  print(names.length);

  // Replacing list values using indexing
  names[1] = 'Benedict';
  print(names);

  // Specifying "const" keyword for immutable lists
  names = const ['Jonathan', 'William', 'Franklin'];

  // names[1] = 'Benedict'; <-- This will throw an error

  // Dynamically typed lists by not explicitly specifying list type
  List names_and_heights = ['Jonathan', 'William', 'Franklin', 170, 190, 184];

  // Referencing lists
  var names2 = names_and_heights;
  names_and_heights[1] = 'Markell';
  print(names2);
  ''' 
  We can see that changing our original list affected our 'copied' list. 
  This is because we are only referencing our original list, and not actually creating a copy.
  ''';

  // Copying lists (Dart 2.3 and above)
  names2 = [...names_and_heights];
  names_and_heights[1] = 'NEW NAME';
  print(names2); // names2 will not be affected by changes to the first list.

  // Sets (No duplicate values)
  var scores = {15, 20, 30};

  scores.forEach((score) {
    print("Next Score: $score");
  });

  print(scores.runtimeType);

  // Maps (TL:DR Collection of KVP, basically a python dictionary)
  var students_and_grades = {'Jonathan': 75, 'Michael': 87, 'Larissa': 90};

  print(students_and_grades['Jonathan']); // Retrieving map values using keys

  // Looping through Maps
  for (var item in students_and_grades.entries) {
    var name = item.key;
    var grade = item.value;
    print("$name: $grade");
  }

  students_and_grades = Map();
  students_and_grades['Jonathan'] = 75;
}
