// 1.4 | Strings, Type Conversion, Constants
void main() {
  var string1 = 'Single quotations work.';
  var string2 = "Double quotations work just as well.";
  var string3 = 'Escape characters aren\'t an issue in Dart.';
  var string4 = "You wouldn't even need them if you're using double quotations";

  print(string1);
  print(string2);
  print(string3);
  print(string4);

  // Raw Strings
  var raw_string =
      r"All escape characters like \n, \t and etc. will be ignored.";

  print(raw_string);

  // String Interpolation
  var age = 57;
  print("Jonathan's age is $age");

  age = 26;
  print("Benedict's age is $age");

  // Multi-Line Strings
  var lyrics = ''' 
There once was a ship that put to sea
And the name of that ship was the Billy o' Tea
The winds blew hard, her bow dipped down
Blow, me bully boys, blow
  ''';

  print(lyrics);

  // Type Conversion

  // String -> Int
  var shoesize = int.parse('36');
  assert(shoesize == 36);

  // String -> Double
  var height = double.parse('181.7');
  assert(height == 181.7); // Error in terminal if false

  // Int -> String
  String shoesize_string = shoesize.toString();
  assert(shoesize_string == '36');

  // Double -> String
  String height_string = height.toString();
  assert(height_string == '181.7');

  // Constants
  const int id = 123721;
  const String birthName = "Jonathan";
  const bool isBiologicalMale = true;

  print(id.runtimeType);
  print(birthName.runtimeType);
  print(isBiologicalMale.runtimeType);
}
